
import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import Comment from 'App/Models/Comment'
import Post from 'App/Models/Post';

export default class CommentsController {

    public async index(ctx:HttpContextContract){

       
         const comments = await Comment.query().preload('user')
       return comments;
        
    }

    public async store({ request, auth }: HttpContextContract) {
        
    //     const postId = request.input("post_id");
    //     const post = await Post.findOrFail(postId)

    //     const user = await auth.use('web').user
       
    //     let obj = {
    //         userId: user?.id,
    //         comment_text: request.all().comment_text
            
    //     }

    //   return post?.related('comments').create(obj)
      
    // }
   
    const user = await auth.use('web').user

    let obj = {
      userId:user?.id,
      postId: request.all().post_id,
      comment_text: request.all().comment_text,
    }
    const createdComment = await Comment.create(obj)
    const searchedComment = await Comment.query()
    .where('id', createdComment.id)
    .preload('user')
    .preload('commentReply', (commentsReplyQuery) => {
      commentsReplyQuery.preload('user')

    })
    for await (const ReplyComment of searchedComment) {
      return ReplyComment;
    }
        
  
}

public async destroy({ request,auth,params }:HttpContextContract){
 

  //const id = request.input("id")
 // for await ( const i of postImage) {
 //     return i.post_image
 // // await Drive.delete(i.post_image)
 // }
 const user = await auth.authenticate()
 //const post = await 
 
 return Comment.query().where('user_id', user.id).where('id', params.id ).delete()
}
    
}

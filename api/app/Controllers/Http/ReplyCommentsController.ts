import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import Comment from 'App/Models/Comment';
import ReplyComment from 'App/Models/ReplyComment'

export default class ReplyCommentsController {

    public async index (ctx:HttpContextContract){
        
        return ReplyComment.all();

    }

    public async store({ request,auth}: HttpContextContract) {

    //     const commentId = request.input("comment_id");
    //     ///const post = await Post.findOrFail(postId)
    //     const comment = await Comment.findOrFail(commentId)

    //     const user = await auth.use('web').user
       
    //     let obj = {
    //         userId: user?.id, 
    //         reply_text: request.all().reply_text,
            
    //     }

    //    return comment?.related('commentReply').create(obj)

    const user = await auth.use('web').user
    let obj = {
        userId: user?.id,
        commentId: request.all().comment_id,
        reply_text: request.all().reply_text,
      }
      const createdCommentReply = await ReplyComment.create(obj)
      const searchedCommentReply = await ReplyComment.query().where('id', createdCommentReply.id)
      .preload('user')
      for await (const iterator of searchedCommentReply) {
        return iterator
      }


        
    }
     
    public async destroy({ request,auth,params }:HttpContextContract){
 

   //   const id = request.input("id")
     // for await ( const i of postImage) {
     //     return i.post_image
     // // await Drive.delete(i.post_image)
     // }
     const user = await auth.authenticate()
     //const post = await 
     
     return ReplyComment.query().where('user_id', user.id).where('id', params.id ).delete()
    }
        
       
       
 }

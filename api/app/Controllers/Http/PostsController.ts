import { HttpContextContract } from "@ioc:Adonis/Core/HttpContext";
import Post from "App/Models/Post";
import Drive from '@ioc:Adonis/Core/Drive'

export default class PostsController {
  public async index( { request} : HttpContextContract) {

    //  const posts = await User.query().preload('user')
    //  return posts;
     return Post.query()
     .preload('user')
     .preload('like')
     .preload('comments',(commentsQuery) => {
       commentsQuery.preload('user')
       commentsQuery.preload("commentReply",(commentsReplyQuery) =>{
         commentsReplyQuery.preload('user') 
       })
      
     })
    
    .preload('postImage')
    .orderBy('id', 'desc')
    //.where('user_id', request.all().user_id)
    //.preload('user')
    
  }

  public async store({ request, auth }: HttpContextContract) {
    //const body = request.body()
    //const todo = await Post.create(body)
    //return todo
   // let post = {
     // title: request.all().title,
     // user_id: request.all().user_id,
   // };
    // return "hello";
   const user = await auth.use('web').user
   return user?.related('posts').create(
       {
           title: request.input('title') 
       }
   )
   // return 'hello';
}

public async destroy({ request,auth,params }:HttpContextContract){
 

     const id = request.input("id")
    // for await ( const i of postImage) {
    //     return i.post_image
    // // await Drive.delete(i.post_image)
    // }
    const user = await auth.authenticate()
    //const post = await 
    
    return Post.query().where('user_id', user.id).where('id', id ).delete()
  }


    

  
}



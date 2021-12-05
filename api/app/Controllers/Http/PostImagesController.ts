import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import Application from '@ioc:Adonis/Core/Application'
import PostImage from 'App/Models/PostImage';
import Post from 'App/Models/Post';
import PostImages from 'Database/migrations/1637665594253_post_images';
export default class PostImagesController {

 public async store({ request,auth }:HttpContextContract){
      
      //return request.all()
       
    const postImages = request.file('files')

     var imageName = ""

      if(!postImages) {
         imageName = ""
       }else {
        imageName = Math.random().toString() + "." + postImages.extname;
         await postImages.move(Application.publicPath('uploads/postImages'), {
               name: imageName,
            
          })
          const user = await auth.use('web').user
          let postObj = {
            user_id: request.input("user_id"),
            post_id: request.input("post_id"),
            post_image: "postImages/" + imageName
           // user_id: request.all().user_id,
          }
      
          return PostImage.create(postObj)
     
         
       }
    // let postObj = {
    //   text: request.input("text"),
    //   post_id: request.input("post_id")
    // }

    // return PostImage.create(postObj)

  
  }

  
      
    

    
     
    
    
}

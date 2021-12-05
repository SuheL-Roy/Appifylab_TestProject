import { HttpContextContract } from "@ioc:Adonis/Core/HttpContext";
import Like from "App/Models/Like";

export default class LikesController {
  public async index({ request }: HttpContextContract) {}

  public async store({ request }: HttpContextContract) {
      //return request.all()
    const countLike = Like.query()
      .where("post_id", request.all().post_id)
      .where('user_id',request.all().user_id)
       //return countLike;
      if((await countLike).length === 0){
        //  return (await countLike).length;
         let likeobj = {
             userId: request.all().user_id,
             postId: request.all().post_id
         }

       await Like.create(likeobj)
        return true;
        // return (await countLike).length
      }else{
        for await (const like of await countLike) {
        await Like.query().where('id', like.id).delete()
        return false
        }
      }

  }
}

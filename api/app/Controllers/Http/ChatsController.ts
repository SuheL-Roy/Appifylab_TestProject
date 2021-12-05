import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import Chat from 'App/Models/Chat'
import User from 'App/Models/User';
import Ws from 'App/Services/Ws';

export default class ChatsController {

    public async index({view}:HttpContextContract){

     const chats = await Chat.query().preload('user')

     return chats;

    }

    public async store({request,auth}:HttpContextContract){
      // return request.all();

      

        const user = await auth.use('web').user

        let data = await user?.related('Chats').create(
       {
           msg: request.input('msg'),
           deletedId:request.input('deleted_id')
       }
        
   )
     Ws.io.emit('test', data)
     
        return data


    }


    public async update({ params,response,auth,request }: HttpContextContract) {
     
     const user = await auth.authenticate();
     const Chats = await Chat.query().where('id',params.id).update({"deleted_id":user.id})
     return Chats;
    
  
    
    }
    
}

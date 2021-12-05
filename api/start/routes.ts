/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| This file is dedicated for defining HTTP routes. A single file is enough
| for majority of projects, however you can define routes in different
| files and just make sure to import them inside this file. For example
|
| Define routes in following two files
| ├── start/routes/cart.ts
| ├── start/routes/customer.ts
|
| and then import them inside `start/routes.ts` as follows
|
| import './routes/cart'
| import './routes/customer''
|
*/

import Route from '@ioc:Adonis/Core/Route'

import 'App/Controllers/Http/Auth/auth'

Route.get('/', ()=>{
  return{message:'You have landed in empty ocean!'}
})

// Route.get('/', async ({ view }) => {
//   return view.render('welcome')
// })

Route.post('/post',"PostsController.store").middleware('auth')
Route.get('/post',"PostsController.index")
Route.post('/deletepost',"PostsController.destroy")
Route.post('/storeImage',"PostImagesController.store")
Route.post('/comment',"CommentsController.store").middleware('auth')
Route.post('/commentdelete/:id',"CommentsController.destroy")
Route.get('/comment',"CommentsController.index")


Route.post('/commentReply',"ReplyCommentsController.store").middleware('auth')
Route.post('/commentReplydelete/:id',"ReplyCommentsController.destroy")
Route.get('/commentReply',"ReplyCommentsController.index")


Route.post('/like',"LikesController.store")

Route.post('/msg','ChatsController.store').middleware('auth')

Route.get('/msg','ChatsController.index')

Route.put('/msg/:id','ChatsController.update').middleware('auth')




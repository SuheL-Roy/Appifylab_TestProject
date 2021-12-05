import { DateTime } from 'luxon'
import { BaseModel, column,BelongsTo,belongsTo } from '@ioc:Adonis/Lucid/Orm'
import Post from './Post'

export default class PostImage extends BaseModel {
  public serializeExtras = true;
  @column({ isPrimary: true })
  public id: number
  @column()
 // public text: string;
  @column()
  public post_image: string
   @column()
   public userId: number;
   @column()
   public postId: number;

  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime

   @belongsTo(() => Post)
   public post: BelongsTo<typeof Post>


}

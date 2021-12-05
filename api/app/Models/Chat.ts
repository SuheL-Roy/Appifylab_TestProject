import { DateTime } from 'luxon'
import { BaseModel, BelongsTo, belongsTo, column } from '@ioc:Adonis/Lucid/Orm'
import User from './User'

export default class Chat extends BaseModel {
  where(arg0: string, arg1: string, arg2: any) {
    throw new Error('Method not implemented.')
  }
  @column({ isPrimary: true })
  public id: number
  @column()
  senderId: number
  @column()
  deletedId:number
  @column()
  msg: string
  @column.dateTime({ autoCreate: true })
  public createdAt: DateTime

  @column.dateTime({ autoCreate: true, autoUpdate: true })
  public updatedAt: DateTime
  
  @belongsTo(() => User,{
    foreignKey: 'senderId', // defaults to userId
  })
  public user: BelongsTo<typeof User>
}

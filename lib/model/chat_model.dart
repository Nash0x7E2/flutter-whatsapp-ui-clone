import 'dart:core';

class ChatModel {
  final String username;
  final String message; 
  final String time;
  final String avatarurl;
  ChatModel({this.username, this.message, this.time, this.avatarurl});
}

 

List<ChatModel> data = [
 new ChatModel(
   username: 'Nash',
   message: 'Flutter is soooo cool :)',
   time: '20:20',
  avatarurl: 'https://pbs.twimg.com/profile_images/945767488087715840/OP_ZIptm_400x400.jpg'
 ),
 new ChatModel(
   username: 'Han Solo',
   message: 'That is not how the force works ',
  time: '20:20',
  avatarurl: 'https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg' 
 ),
  new ChatModel(
   username: 'Ethan',
   message: 'why hello there',
  time: '20:20',
  avatarurl: 'https://s-media-cache-ak0.pinimg.com/originals/d4/c3/ee/d4c3ee93cca0bba877318989b46b39d6.jpg'
 ),
  new ChatModel(
   username: 'Sam',
   message: 'Lorem ipsum delor sit amet...',
  time: '20:20',
  avatarurl: 'http://clipart-library.com/images/kTMKzGyMc.jpg'
 ),
  new ChatModel(
   username: 'Ava',
   message: 'AOT is better than JIT ;)',
  time: '20:20',
  avatarurl: 'http://clipart-library.com/images/kTMKzGyMc.jpg'
 ),
  new ChatModel(
   username: 'Jbird',
   message: 'Stop camping in fortnite Idiot',
  time: '20:20',
  avatarurl: 'https://s-media-cache-ak0.pinimg.com/originals/d4/c3/ee/d4c3ee93cca0bba877318989b46b39d6.jpg'
 ),
   new ChatModel(
   username: 'Jake',
   message: 'Flutter is the best!',
  time: '20:20',
  avatarurl: 'http://clipart-library.com/images/kTMKzGyMc.jpg'
 ),


] ;
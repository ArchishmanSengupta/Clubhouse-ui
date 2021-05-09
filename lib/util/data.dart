import 'dart:math';
import 'package:blackvector/models/room.dart';
import 'package:blackvector/models/user.dart';

Random random = Random();

String dummyText =
    'I am not mad. My mother had me tested ❤🏠🏠';

// User
List names = [
  'American Bobtail',
  'British Shorthair',
  'Cornish Rex',
  'Egyptian Mau',
  'Devon Rex',
  'Exotic Shorthair',
  'Japanese Bobtail',
  'Maine Coon',
  'Scottish Fold',
  'Selkirk Rex',
  'American Bobtail2',
  'British Shorthair2',
  'Cornish Rex2',
  'Egyptian Mau2',
  'Devon Rex2',
  'Exotic Shorthair2',
  'Japanese Bobtail2',
  'Maine Coon2',
  'Scottish Fold2',
  'Selkirk Rex2',
];

List userData = List.generate(
  20,
  (index) => {
    'name': names[index],
    'username': '@${names[index].toString().split(' ')[0].toLowerCase()}',
    'profileImage': 'assets/images/cat${index % 10 + 1}.jpg',
    'followers': '100k',
    'following': '4',
    'lastAccessTime': '${index + 10}m',
    'isNewUser': random.nextBool(),
  },
);

// MyProfile
dynamic profileData = {
  'name': ' Sheldon Cooper',
  'username': '@bazinga',
  'profileImage': 'images/profile1.jpg',
  'followers': '100k',
  'following': '4',
  'lastAccessTime': '0m',
  'isNewUser': random.nextBool(),
};

// Room
List roomData = List.generate(
  10,
  (index) => {
    'title': 'Sheldon hasn\'t always been the merriest fellow when it comes to having holiday spirit.  ❤🏠🏠',
    "users": List.generate(20, (index) => User.fromJson(userData[index]))
      ..shuffle(),
    'speakerCount': 4,
  },
);

List<Room> rooms = List.generate(
  10,
  (index) => Room.fromJson(roomData[index]),
);

List lobbyBottomSheets = [
  {
    'image': 'assets/images/open.png',
    'text': 'Open',
    'selectedMessage': 'Start a room open to everyone',
  },
  {
    'image': 'assets/images/social.png',
    'text': 'Social',
    'selectedMessage': 'Start a room with people I follow',
  },
  {
    'image': 'assets/images/closed.png',
    'text': 'Closed',
    'selectedMessage': 'Start a room for people I choose',
  },
];

List<User> users = List.generate(20,
(index) => User.fromJson(userData[index]
)
);
// List<Room> rooms = List.generate(10,
// (index) => Room.fromJson(userData[index]
// )
// );
User myProfile = User.fromJson(profileData);
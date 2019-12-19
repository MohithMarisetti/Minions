import 'package:flutter/material.dart';

import 'character.dart';

const kMainTextTextStyle = TextStyle(
    fontSize: 35.0,
    letterSpacing: 1.1,
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontFamily: 'Lexend');

const kSubTextTextStyle = TextStyle(
    fontSize: 35.0,
    letterSpacing: 1.1,
    color: Colors.black54,
    fontWeight: FontWeight.w300,
    fontFamily: 'Lexend');

var kCharacterNameTextStyle = TextStyle(
  fontFamily: 'Lexend',
  letterSpacing: 1.1,
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
  color: Colors.white.withOpacity(0.8),
);

var kClickNameTextStyle = TextStyle(
  fontFamily: 'Lexend',
  height: 1.5,
  fontSize: 18.0,
  //fontWeight: FontWeight.bold,
  color: Colors.white.withOpacity(0.5),
);

const kClipsTextStyle = TextStyle(
  fontFamily: 'Lexend',
  fontSize: 24.0,
  color: Colors.black87,
  fontWeight: FontWeight.w700,
);

Character kevinCharacter = Character(
    imagePath: 'assets/images/kevin.png',
    colors: [Color(0xFFF25F2A), Color(0xFFFECE7A)],
    name: 'Kevin',
    clipImages: ['assets/images/minions.jpg', 'assets/images/minions2.jpg'],
    description:
        'Kevin is the one who manages the wireless network in Gru\'s house, shown when Gru is looking for him when the Wi-Fi is not working. Kevin is the only minion to know what is going to happen to him when the serum is injected to him. He is also the only minion reverted to normal by injection.');

Character agnesCharacter = Character(
    imagePath: 'assets/images/agnes.png',
    colors: [Color(0xFFF31C40), Color(0xFFFE7A7C)],
    name: 'Agnes',
    clipImages: ['assets/images/agnes1.jpeg', 'assets/images/agnes2.jpg'],
    description:
        'Agnes is a little girl with dark brown eyes. Her long black hair is tied in an upwards ponytail with a red scrunchie. Most of the time, Agnes wears blue overalls over a yellow and brown striped t-shirt, and white sneakers with yellow socks.');

Character margoCharacter = Character(
    imagePath: 'assets/images/margo.png',
    // colors: [Color(0xFF11998e), Color(0xFF38ef7d)],
    colors: [Color(0xFF657153), Color(0xFF8AAA79)],
    name: 'Margo',
    clipImages: ['assets/images/margo1.jpg', 'assets/images/margo2.jpg'],
    description:
        'Margo is the oldest of the three orphan girls that Gru adopts. Before she was adopted, she was an orphan horribly treated by Miss Hattie. Like Edith and Agnes (Margo\'s younger sisters), Margo wished to be adopted by somebody who would love them. She is very disapproving of Edith\'s mischief, shown where Edith jumps in puddles which gets her and Agnes wet, and also when she breaks a vial of acid in Gru\'s kitchen.');

Character stuartCharacter = Character(
    imagePath: 'assets/images/stuart.png',
    colors: [Color(0xFF8EA0C8), Color(0xFFB0B7DA)],
    name: 'Stuart',
    clipImages: ['assets/images/minions.jpg', 'assets/images/minions2.jpg'],
    description:
        "Stuart is playful, friendly, intelligent and funny. He is skillful at video games like his friend Dave. He can also be the most sincere and innocent out of all the minions. He also seems to have a rebellious and obstreperous attitude. He is considered to be a slacker among the other Minions, preferring to chill out and play the ukulele than listen to the rules. Also, he was said to be always hungry in Minions, such as when he attempted to eat Kevin and Bob when he was thinking of them as bananas, and even tried to eat a yellow fire hydrant in New York, also thinking it as a banana or food as well.");

Character edithCharacter = Character(
    imagePath: 'assets/images/edith.png',
    colors: [Color(0xFFC57C83), Color(0xFFEFB2C7)],
    name: 'Edith',
    clipImages: ['assets/images/edith1.jpg', 'assets/images/edith2.jpg'],
    description:
        "Edith is currently the least explored of the three sisters, which is understandable considering she's the middle child, the likes of which are stereotypically neglected by their parents. She shares many traits with Gru, being very destructive, tomboyish and sports a macabre sense of humor. In the beginning, she is reserved and quiet - being opposed to the idea of being an adopted child.");

Character doctorCharacter = Character(
    imagePath: 'assets/images/doctor.png',
    colors: [Color(0xFF304352), Color(0xFFd7d2cc)],
    name: 'Dr. Nefario',
    clipImages: ['assets/images/doctor1.jpg', 'assets/images/doctor2.png'],
    description:
        "Dr. Joseph Albert Nefario, most commonly referred to as Dr. Nefario, is a major character in Despicable Me and the former minor antagonist of Despicable Me 2, with cameos in Minions and Despicable Me 3. He is Gru's gadgeteer, residing in his underground lair and laboratories. He builds and designs most of Gru's machines. Gru and Dr. Nefario seem to have been trying to shock the world with 'The True Crime of the Century' for several years.");

Character brattCharacter = Character(
    imagePath: 'assets/images/bratt.png',
    colors: [Color(0xFF3f2b96), Color(0xFFa8c0ff)],
    name: 'Balthazar Bratt',
    clipImages: ['assets/images/bratt1.jpg', 'assets/images/bratt2.jpg'],
    description:
        "Balthazar Bratt is the main antagonist and comic-relief character of Despicable Me 3. He was a former child star in the 80's who, succeeding his show's cancellation after hitting puberty, changes from good to bad, plans on world domination. His theme song is Hug Me. He is funny, evil, mean, ruthless, power-hungry, rude, silly, dangerous, mischievous, selfish, laid-back, greedy, childish, musical, arrogant, cocky, goofy and manipulative. His goal is to destroy Hollywood.");

Character vigilCharacter = Character(
    imagePath: 'assets/images/vigil.png',
    colors: [Color(0xFF304352), Color(0xFFd7d2cc)],
    name: 'Vigil',
    clipImages: [
      'assets/images/vigil_clip1.jpg',
      'assets/images/vigil_clip2.jpg'
    ],
    description:
        "Chul Kyung Hwa spent months on the run in Asia as a child. He lost his family during the flight before finding asylum in South Korea. As an adult, he enlisted in the ROK Navy and later earned a berth in the ROKN UDT/SEALs, becoming so highly skilled that the 707th Special Mission Battalion handpicked him as an operator. His ERC-7 backpack enables him to vanish from live feeds. ");

Character jackalCharacter = Character(
    imagePath: 'assets/images/jackal.png',
    colors: [Color(0xFF8EA0C8), Color(0xFFB0B7DA)],
    name: 'Jackal',
    clipImages: [
      'assets/images/jackal_clip1.png',
      'assets/images/jackal_clip2.png'
    ],
    description:
        "Born in Ceuta, Spain, Ryad Ramírez Al-Hassar’s broad resourcefulness on difficult terrains made him an expert tracker. His extensive training outside the Cuerpo Nacional de Policía include several survival courses, tactical desert navigation programs, and specialized combat diving practice. Ramírez is known to be the best asset of the G.E.O. to track down HVTs and intercept narcotics shipments. He is ruthless on the field and determined to unravel the events that led to the loss of his older brother, Faisal.");

List<Character> kMinionCharacters = [
  kevinCharacter,
  agnesCharacter,
  margoCharacter,
  stuartCharacter,
  edithCharacter,
  doctorCharacter,
  brattCharacter
];

List<Character> kRainbow6Characters = [
  vigilCharacter,
  jackalCharacter,
  brattCharacter
];

List<List<Character>> kCharacters = [kMinionCharacters, kRainbow6Characters];

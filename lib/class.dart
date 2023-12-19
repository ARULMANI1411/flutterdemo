

import 'package:untitled/show%20dedail.dart';

class spoti
{
  String? image;
  String? text;
  String? text2;


  spoti(this.image,this.text,this.text2);
}

List lis=spotiData.map((e)=>spoti(e['image'],e['text'],e['text2'])).toList();

 var spotiData=[
   {
     "image":"jilla.jfif","text":"Yaar Azhaipadhu","text2":"Yaar Azhaipadhu"
   },
   {
     "image":"vaaththi.jfif","text":"Aval ","text2":"Aval"
   },
   {
     "image":"vetha.jfif","text":"Celebration Of Varisu(fromm...","text2":"Celebration Of Varisu"
   },
   {
     "image":"assets/earth.png","text":"NAan naan ","text2":"NAan naan"
   },
   {
     "image":"assets/aa1.jpg","text":"Pushpaa intervel Bgm","text2":"Pushpaa interve"
   },
   {
     "image":"assets/aa2.jpg","text":"kadaram kondan","text2":"kadaram kondan"
   },
   {
     "image":"assets/aa3.jpg","text":"Kadaisi vivasiy",
     "text2":"Kadaisi vivasiy",
   },
   {
     "image":"assets/aa4.webp","text":"Veerame vagai Soodum",
     "text2":"Veerame vagai Soodum"
   },
   {
     "image":"vijay.jfif",
   },
   {
     "image":"assets/aa2.jpg","text":"kadaram kondan","text2":"kadaram kondan"
   },
   {
     "image":"vetha.jfif","text":"Celebration Of Varisu(fromm...","text2":"Celebration Of Varisu"
   },

 ];



class home
{
  String? image;
  String? image2;
  String? text;


  home(this.image,this.image2,this.text,);
}

List hom=homeData.map((e)=>home(e['image'],e['text'],e['image2'])).toList();
var homeData=[

  {
    "image":"assets/vetha.jfif",
  },
  {
    "image":"assets/vickram.jfif",
  },
  {
    "image":"assets/cricket.jpg",
  },

];


class sport
{
  String? image;
  String? text;

  sport(this.image,this.text,);
}

List spo=sportData.map((e)=>sport(e['image'],e['text'],)).toList();
var sportData=[

  {
    "image":"assets/cricket.jpg",
  },
  {
    "image":"assets/kabbadi.jfif",
  },
  {
    "image":"assets/cricket.jpg",
  },
  {
    "image":"assets/kabbadi1.jfif",
  },
  {
    "image":"assets/foot boll.jfif",
  },
];

class movie
{
  String? image;
  String? text;

  movie(this.image,this.text,);
}

List mov=movieData.map((e)=>movie(e['image'],e['text'],)).toList();
var movieData=[

  {
    "image":"assets/vickram.jfif",
  },
  {
    "image":"assets/vijay.jfif",
  },
  {
    "image":"assets/jilla.jfif",
  },
  {
    "image":"assets/vetha.jfif",
  },
  {
    "image":"assets/vidutha.jfif",
  },
];

class one
{
  String? image;

  one(this.image);
}
List on=oneData.map((e)=>one(e['image'],)).toList();
var oneData=[

  {
    "image":"https://pbs.twimg.com/media/ENr68SrU0AAsuJS?format=jpg&name=large",
  },
  {
    "image":"https://media.cnn.com/api/v1/images/stellar/prod/221126143352-weston-mckennie.jpg?c=original",
  },
  {
    'image':"https://pbs.twimg.com/media/ENr68SrU0AAsuJS?format=jpg&name=large"
  },
  {
    "image":'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw3aSQALOr_omeNzBdGh-x0ViDEAlruQQY9g&usqp=CAU'
  },
  {
    "image":'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_md_2x/f_auto/primary/ngdjbafv3twathukjbq2'
  },
];


class two
{

  String? text;
  String? text2;

  two(this.text,this.text2);
}

List to=twoData.map((e)=>two(e['text'],e['text2'])).toList();
var twoData=[

  {
    "text":"1st t20i.IDFCT Bank india vs australia","text2":'23rd Nov -match begins at 7.00 pm'
  },
  {
    "text":"2nd t20i.IDFCT Bank india vs australia","text2":'26th Nov -match begins at 7.00 pm'
  },
  {
    "text":"3rd t20i.IDFCT Bank india vs australia","text2":'28th Nov -match begins at 7.00 pm'
  },
  {
    "text":"4tt t20i.IDFCT Bank india vs australia","text2":'30th Nov -match begins at 7.00 pm'
  },

];


class shows
{
String? image;
shows(this.image,);
}

List showsi=showsData.map((e)=>shows(e['image'])).toList();

var showsData=[
  {
    "image":"assets/aa2.jpg",
  },
  {
    "image":"assets/aa1.jpg",
  },
  {
    "image":"assets/aa3.jpg",
  },
  {
    "image":"assets/earth.png",
  },
  {
    "image":"assets/aa1.jpg",
  },
  {
    "image":"assets/aa2.jpg",
  },
  {
    "image":"assets/aa3.jpg",

  },
  {
    "image":"assets/aa4.webp",

  },
  {
    "image":"assets/aa3.jpg",
  },
  {
    "image":"assets/aa2.jpg",
  },
  {
    "image":"assets/aa4.webp",
  },
  {
    "image":"assets/aa1.jpg",
  },
];


class pro
{

  String? text;


  pro(this.text,);
}

List profi=proData.map((e)=>pro(e['text'],)).toList();
var proData=[

  {
    "text":"News",
  },
  {
    "text":"Watch list",
  },
  {
    "text":"Setting",
  },

  {
    "text":"Perference",
  },
  {
    "text":"Help&leagel",
  },
];



class data
{

  String? image;


  data(this.image,);
}

List dat=dataData.map((e)=>data(e['image'],)).toList();
var dataData=[

  {
    "image":"assets/aa2.jpg",
  },
  {
    "image":"assets/aa1.jpg",
  },
  {
    "image":"assets/aa3.jpg",
  },

  {
    "image":"assets/aa4.webp",
  },
  {
    "image":"assets/vetha.jfif",
  },
  {
    "image":"assets/vijay.jfif",
  },
  {
    "image":"assets/vaaththi.jfif",
  },
  {
    "image":"assets/vidutha.jfif",
  },
  {
    "image":"assets/jilla.jfif",
  },
  {
    "image":"assets/aa1.jpg",
  },
  {
    "image":"assets/vetha.jfif",
  },
  {
    "image":"assets/aa2.jpg",
  },
];

class det
{

  String? image;


  det(this.image,);
}

List deti=detData.map((e)=>det(e['image'],)).toList();
var detData=[

  {
    "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSeqrQnsM7Eipc6JbQBqpK3t-Ya5wo25P_sL_cpNDrGX_PwGFPN-_4_pEUlD0tvETq5Ig&usqp=CAU",
  },
  {
    "image":"https://qph.cf2.quoracdn.net/main-qimg-2af6e7adc8d74f3da55d9ab259d762c8-lq",
  },
  {
    "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwYXcJ8-9t0u8e-HDpgU5comNGzUFd29KwiQ&usqp=CAU",
  },

  {
    "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmgf-8VQdigP52x4D6w0-P3QkAR29d-QZJ1w&usqp=CAU",
  },
  {
    "image":"https://timesofindia.indiatimes.com/photo/92337928.cms",
  },
  {
    "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwYXcJ8-9t0u8e-HDpgU5comNGzUFd29KwiQ&usqp=CAU",
  },
  {
    "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSeqrQnsM7Eipc6JbQBqpK3t-Ya5wo25P_sL_cpNDrGX_PwGFPN-_4_pEUlD0tvETq5Ig&usqp=CAU",
  },
];



class kids
{
  String? image;
  String? image2;
  String? image3;

  kids(this.image,this.image2,this.image3);
}

List ki=kidsData.map((e)=>kids(e['image'],e['image2'],e['image3'])).toList();
var kidsData=[

  {
    "image2":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAOyBOvfPBSg6YAGuB6KgPHaQdlZTKvqzNrQ&usqp=CAU",
    "image":"https://staticg.sportskeeda.com/editor/2023/08/63291-16913969569317-1920.jpg",
     "image3":"https://i.pinimg.com/474x/bc/f0/27/bcf0272b061414169e8d2e21659223c7.jpg",
  },
  {
   "image2":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwT_hd_xVHC8Wd0xgkzL4YArtLodHNLooahQ&usqp=CAU",
    "image":"https://miro.medium.com/v2/resize:fit:1200/1*wLCHEekWiQAj-Q-Fg_8zcg.jpeg",
     "image3":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR54G2QSasyRTn_J7gFu05W0U34XOGA5V6h8g&usqp=CAU",
  },
  {
   "image2":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeMH4Q261y6PcFIMJy-rdWpw1UT_eMCpH9Nw&usqp=CAU",
    "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNp6RF96J3cUdSwXSxi9nLPSqQDzi3K6cjQg&usqp=CAU",
  "image3":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiFm7InKk34Rh_ObQM-y7AZNHOwgYOczD43g&usqp=CAU"
  },
  {
   "image2":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAFNb84sIB_Adqz6jQzsU1lMhGGk0GU6ybiQ&usqp=CAU",
    "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVbD1u2uzIH4PrIYwVD1Pc0FJY266ALdoX1A&usqp=CAU",
  "image3":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDDvawAJrH5aM_hQxV3XV7om9rBmHN6m2KNw&usqp=CAU"
  },
  {
    "image2": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaR7E1IrsucWXcfgTB8Iwzzt9DgattIq0Rcg&usqp=CAU",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWseKjE9Vj1n1IDiyy-L9io5kjfq_CTWr8mA&usqp=CAU",
    "image3": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEm8BeZklBDBnjWROjxRdXL1I64gFPDxbtNA&usqp=CAU"
  }

];
import 'package:amazon_uiclone_app/cart/widgets/cart_item.dart';
import 'package:amazon_uiclone_app/home/widgets/simple_product_widget.dart';
import 'package:flutter/material.dart';

import '../model/product_model.dart';
import '../screens/product_screen.dart';
import '../widgets/results_widget.dart';

const double kAppBarHeight = 80;

const appBarGradient = LinearGradient(
  colors: [
    Color.fromARGB(255, 29, 201, 192),
    Color.fromARGB(255, 125, 221, 216),
  ],
  stops: [0.5, 1.0],
);

const List<Color> backgroundGradient = [
  Color(0xff80d9e9),
  Color(0xffa0e9ce),
]; //Cyan, and a mix of Cyan and Green

const Color yellowColor = Color(0xfffed813); //Yellow

const Color activeCyanColor = Color(0xff0a7c97);

const Color backgroundColor = Colors.white;

//Cyan, and a mix of Cyan and Green

const List<Color> lightBackgroundGradient = [
  Color(0xffa2e0eb),
  Color.fromARGB(255, 200, 228, 218),
];

const secondaryColor = Color.fromRGBO(255, 153, 0, 1);

const Color greyBackgroundColor = Color(0xffebecee);
var selectedNavBarColor = Colors.cyan[800]!;
const unselectedNavBarColor = Colors.black87;
const String amazonLogoUrl =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2500px-Amazon_icon.svg.png";

const List<String> categoriesList = [
  "Prime",
  "Mobiles",
  "Fashion",
  "Electronics",
  "Home",
  "Fresh",
  "Appliances",
  "Books, Toys",
  "Essential"
];

const List<String> categoryLogos = [
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/115yueUc1aL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11qyfRJvEbL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11BIyKooluL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/01cPTp7SLWL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11yLyO9f9ZL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11M0jYc-tRL._SX90_SY90_.png",
];

const List<String> largeAds = [
  "https://m.media-amazon.com/images/I/51QISbJp5-L._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61jmYNrfVoL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/612a5cTzBiL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61fiSvze0eL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61PzxXMH-0L._SX3000_.jpg",
];

const List<String> smallAds = [
  "https://m.media-amazon.com/images/I/11M5KkkmavL._SS70_.png",
  "https://m.media-amazon.com/images/I/11iTpTDy6TL._SS70_.png",
  "https://m.media-amazon.com/images/I/11dGLeeNRcL._SS70_.png",
  "https://m.media-amazon.com/images/I/11kOjZtNhnL._SS70_.png",
];

const List<String> adItemNames = [
  "Amazon Pay",
  "Recharge",
  "Rewards",
  "Pay Bills"
];

const String amazonLogo =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/2560px-Amazon_logo.svg.png";

const List<String> carouselImages = [
  'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
  'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
  'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wireless/AdvantagePrime/BAU/14thJan/D37196025_IN_WL_AdvantageJustforPrime_Jan_Mob_ingress-banner_1242x450.jpg',
  'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
  'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
];

const List<Map<String, String>> dealOfTheDayScrollImg = [
  {
    'title': 'Iphone 11',
    'image': 'assets/images/amz_iphone11_img.webp',
  },
  {
    'title': 'Iphone 12',
    'image': 'assets/images/amz_iphone12_img.jpg',
  },
  {
    'title': 'Laptop',
    'image': 'assets/images/amz_laptop_img.jpg',
  },
  {
    'title': 'Macbook',
    'image': 'assets/images/amz_macbook_img.jpg',
  },
  {
    'title': 'Overhead Headphone',
    'image': 'assets/images/amz_overhead_headphone.jpg',
  },
  {
    'title': 'Bluetooth Headphone',
    'image': 'assets/images/amz_headphone_img.jpg',
  },
];

List<Widget> testChildren = [
  SimpleProductWidget(
    productModel: ProductModel(
      url:
          "https://specials-images.forbesimg.com/imageserve/60cab13fe2f5f39d2288ad1c/Best-Headphones-On-Amazon--EarFun-Air-Pro/960x0.jpg?cropX1=0&cropX2=500&cropY1=0&cropY2=500",
      productName: "Wireless Headphone",
      cost: 1199,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Earfun",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 458,
    ),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
      url:
          "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1562601389-41CRnvYqmqL.jpg?crop=1xw:1.00xh;center,top&resize=480:*",
      productName: "Echo dot",
      cost: 2999,
      discount: 0,
      uid: "eioejfbkn",
      sellerName: "Amazon",
      sellerUid: "983498ihjb",
      rating: 4,
      noOfRating: 521,
    ),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
      url: "https://m.media-amazon.com/images/I/71gm8v4uPBL._SX466_.jpg",
      productName: "Apple iphone 14",
      cost: 79999,
      discount: 0,
      uid: "eioejfbkn",
      sellerName: "apple",
      sellerUid: "983498ihjb",
      rating: 4,
      noOfRating: 865,
    ),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
      url: "https://m.media-amazon.com/images/I/71yc2BhuWRL._AC_UL400_.jpg",
      productName: "Boat stone 1200",
      cost: 2999,
      discount: 0,
      uid: "eioejfbkn",
      sellerName: "Boat",
      sellerUid: "983498ihjb",
      rating: 4,
      noOfRating: 356,
    ),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
      url:
          "https://images-eu.ssl-images-amazon.com/images/I/71JmAlJ8ggL._AC_UL600_SR600,400_.jpg",
      productName: "Headphone",
      cost: 1899,
      discount: 0,
      uid: "eioejfbkn",
      sellerName: "Boat",
      sellerUid: "983498ihjb",
      rating: 3,
      noOfRating: 458,
    ),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
      url: "https://m.media-amazon.com/images/I/717n9H3RSxL._AC_SX466_.jpg",
      productName: "Macbook",
      cost: 89999,
      discount: 0,
      uid: "eioejfbkn",
      sellerName: "Apple",
      sellerUid: "983498ihjb",
      rating: 4,
      noOfRating: 658,
    ),
  )
];

List<String> keysOfRating = [
  "Very bad",
  "Poor",
  "Average",
  "Good",
  "Excellent"
];

List<Widget> cartProduct = [
  CartItemWidget(
    product: ProductModel(
      url:
          "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1562601389-41CRnvYqmqL.jpg?crop=1xw:1.00xh;center,top&resize=480:*",
      productName: "Echo dot",
      cost: 2999,
      discount: 0,
      uid: "eioejfbkn",
      sellerName: "Amazon",
      sellerUid: "983498ihjb",
      rating: 4,
      noOfRating: 545,
    ),
  ),
  CartItemWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/71gm8v4uPBL._SX466_.jpg",
      productName: "Apple Iphone 14",
      cost: 71999,
      discount: 0,
      uid: "eioejfbkn",
      sellerName: "Apple",
      sellerUid: "983498ihjb",
      rating: 4,
      noOfRating: 758,
    ),
  ),
  CartItemWidget(
    product: ProductModel(
      url:
          "https://specials-images.forbesimg.com/imageserve/60cab13fe2f5f39d2288ad1c/Best-Headphones-On-Amazon--EarFun-Air-Pro/960x0.jpg?cropX1=0&cropX2=500&cropY1=0&cropY2=500",
      productName: "Wireless Headphone",
      cost: 1199,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Earfun",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 10,
    ),
  ),
  CartItemWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/81qp4RAGdmL._UX500_.jpg",
      productName: "Nike Mens Flex Experience Rn 10 Running Shoe",
      cost: 1899,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Nike",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 665,
    ),
  ),
  CartItemWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/71yc2BhuWRL._AC_UL400_.jpg",
      productName: "boAt Stone 1200 ",
      cost: 3699,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Boat",
      sellerUid: "dkfanvbln",
      rating: 4,
      noOfRating: 448,
    ),
  ),
];

List<Widget> searchScreenProducts = [
  ResultsWidget(
    product: ProductModel(
      url:
          "https://specials-images.forbesimg.com/imageserve/60cab13fe2f5f39d2288ad1c/Best-Headphones-On-Amazon--EarFun-Air-Pro/960x0.jpg?cropX1=0&cropX2=500&cropY1=0&cropY2=500",
      productName: "Wireless Headphone",
      cost: 1199,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Earfun",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 10,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/71gm8v4uPBL._SX466_.jpg",
      productName: "Apple Iphone 14",
      cost: 71999,
      discount: 0,
      uid: "eioejfbkn",
      sellerName: "Apple",
      sellerUid: "983498ihjb",
      rating: 4,
      noOfRating: 758,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/81qp4RAGdmL._UX500_.jpg",
      productName: "Nike Mens Running Shoe",
      cost: 1899,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Nike",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 665,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/71yc2BhuWRL._AC_UL400_.jpg",
      productName: "boAt Stone 1200 ",
      cost: 3699,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Boat",
      sellerUid: "dkfanvbln",
      rating: 4,
      noOfRating: 448,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/61hVGtfIXGL._SX522_.jpg",
      productName: "boAt Flash Edition Smart Watch",
      cost: 1199,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Boat",
      sellerUid: "dkfanvbln",
      rating: 4,
      noOfRating: 578,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/510+wjzq-vL._SX522_.jpg",
      productName: "boAt Airdopes 121v2 in-Ear True Wireless Earbuds",
      cost: 1299,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Boat",
      sellerUid: "dkfanvbln",
      rating: 4,
      noOfRating: 784,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/61y2VVWcGBL._SX522_.jpg",
      productName: "Fire-Boltt Phoenix Smart Watch with Bluetooth Calling",
      cost: 1299,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Fire boltt",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 457,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/71OboCuNnAL._SX522_.jpg",
      productName: "Lenovo Casual Laptop Backpack B210",
      cost: 798,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Lenovo",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 241,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/51AMqyp+sfL._SX522_.jpg",
      productName:
          "OnePlus Buds Z2 Bluetooth Truly Wireless in Ear Earbuds with mic",
      cost: 4999,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "OnePlus",
      sellerUid: "dkfanvbln",
      rating: 4,
      noOfRating: 458,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/61HIqJZKPkS._SX679_.jpg",
      productName: "HP 14(2021) 10th Gen Intel Core i5 Laptop",
      cost: 56699,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "HP",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 154,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url:
          "https://specials-images.forbesimg.com/imageserve/60cab13fe2f5f39d2288ad1c/Best-Headphones-On-Amazon--EarFun-Air-Pro/960x0.jpg?cropX1=0&cropX2=500&cropY1=0&cropY2=500",
      productName: "Wireless Headphone",
      cost: 1199,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Earfun",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 10,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/71gm8v4uPBL._SX466_.jpg",
      productName: "Apple Iphone 14",
      cost: 71999,
      discount: 0,
      uid: "eioejfbkn",
      sellerName: "Rick Seller",
      sellerUid: "983498ihjb",
      rating: 4,
      noOfRating: 758,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/81qp4RAGdmL._UX500_.jpg",
      productName: "Nike Mens Running Shoe",
      cost: 1899,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Earfun",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 665,
    ),
  ),
  ResultsWidget(
    product: ProductModel(
      url: "https://m.media-amazon.com/images/I/71yc2BhuWRL._AC_UL400_.jpg",
      productName: "boAt Stone 1200 ",
      cost: 3699,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Earfun",
      sellerUid: "dkfanvbln",
      rating: 4,
      noOfRating: 448,
    ),
  ),
];

List OrderImglist = [
  "https://m.media-amazon.com/images/I/71gm8v4uPBL._SX466_.jpg",
  "https://m.media-amazon.com/images/I/61HIqJZKPkS._SX679_.jpg",
  "https://m.media-amazon.com/images/I/51AMqyp+sfL._SX522_.jpg",
  "https://m.media-amazon.com/images/I/81qp4RAGdmL._UX500_.jpg",
  "https://m.media-amazon.com/images/I/71yc2BhuWRL._AC_UL400_.jpg",
  "https://m.media-amazon.com/images/I/61y2VVWcGBL._SX522_.jpg",
];

List<Widget> productScreenItems = [
  ProductScreen(
    productModel: ProductModel(
      url: OrderImglist[0],
      productName: "Apple Iphone 14",
      cost: 71999,
      discount: 0,
      uid: "eioejfbkn",
      sellerName: "Rick Seller",
      sellerUid: "983498ihjb",
      rating: 4,
      noOfRating: 758,
    ),
  ),
  ProductScreen(
    productModel: ProductModel(
      url: OrderImglist[1],
      productName: "HP 14(2021) 10th Gen Intel Core i5 Laptop",
      cost: 56699,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "HP",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 154,
    ),
  ),
  ProductScreen(
    productModel: ProductModel(
      url: OrderImglist[2],
      productName:
          "OnePlus Buds Z2 Bluetooth Truly Wireless in Ear Earbuds with mic",
      cost: 4999,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "OnePlus",
      sellerUid: "dkfanvbln",
      rating: 4,
      noOfRating: 458,
    ),
  ),
  ProductScreen(
    productModel: ProductModel(
      url: OrderImglist[3],
      productName: "Nike Mens Flex Experience Rn 10 Running Shoe",
      cost: 1899,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Nike",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 665,
    ),
  ),
  ProductScreen(
    productModel: ProductModel(
      url: OrderImglist[4],
      productName: "boAt Stone 1200 ",
      cost: 3699,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Earfun",
      sellerUid: "dkfanvbln",
      rating: 4,
      noOfRating: 448,
    ),
  ),
  ProductScreen(
    productModel: ProductModel(
      url: OrderImglist[5],
      productName: "Fire-Boltt Phoenix Smart Watch with Bluetooth Calling",
      cost: 1299,
      discount: 0,
      uid: "afdaterfds",
      sellerName: "Fire boltt",
      sellerUid: "dkfanvbln",
      rating: 3,
      noOfRating: 457,
    ),
  ),
];

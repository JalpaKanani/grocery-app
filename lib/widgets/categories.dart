import 'package:emojis/emoji.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vegapp/button/Home_Add_button.dart';
import 'package:vegapp/screen/see%20all/Fruits/fruititem.dart';
import 'package:vegapp/screen/see%20all/atta/Atta.dart';

import 'package:vegapp/screen/see%20all/Fruits/Fruits.dart';
import 'package:vegapp/screen/see%20all/flower/flower.dart';
import 'package:vegapp/screen/see%20all/grocery/grocery.dart';
import 'package:vegapp/screen/drawer%20screen/faqscreen.dart';
import 'package:vegapp/screen/grocery/almonds.dart';
import 'package:vegapp/screen/see%20all/grocery/groceryitem.dart';
import 'package:vegapp/screen/see%20all/rootvegies/rootvegies.dart';
import 'package:vegapp/screen/rootvegies/beetroot.dart';
import 'package:vegapp/screen/see%20all/rootvegies/rootvegiesitem.dart';
import 'package:vegapp/screen/see%20all/vegitables/vegetables.dart';
import 'package:vegapp/screen/see%20all/vegitables/vegitableitem.dart';
import 'package:vegapp/screen/vegitables/bhendi.dart';
import 'package:vegapp/screen/vegitables/bittergourd.dart';
import 'package:vegapp/screen/vegitables/cabbage.dart';
import 'package:vegapp/screen/rootvegies/carrotorange.dart';
import 'package:vegapp/screen/rootvegies/cauliflower.dart';
import 'package:vegapp/screen/seasoning/chilligreen.dart';
import 'package:vegapp/screen/vegitables/coccinia.dart';
import 'package:vegapp/screen/fruits/coconut.dart';
import 'package:vegapp/screen/vegitables/corianderbunch.dart';
import 'package:vegapp/screen/vegitables/cucumber.dart';
import 'package:vegapp/screen/seasoning/curryleaves.dart';
import 'package:vegapp/screen/grocery/dryfruits.dart';
import 'package:vegapp/screen/grocery/figs.dart';
import 'package:vegapp/screen/seasoning/garlic.dart';
import 'package:vegapp/screen/seasoning/gingerindian.dart';
import 'package:vegapp/screen/seasoning/grasscartoon.dart';
import 'package:vegapp/screen/fruits/kiwigreen.dart';
import 'package:vegapp/screen/seasoning/lemon.dart';
import 'package:vegapp/screen/grocery/mashroom.dart';
import 'package:vegapp/screen/rootvegies/mooli.dart';
import 'package:vegapp/screen/fruits/muskmelons.dart';
import 'package:vegapp/screen/rootvegies/onion.dart';
import 'package:vegapp/screen/vegitables/paalak.dart';
import 'package:vegapp/screen/fruits/pearsgreen.dart';
import 'package:vegapp/screen/rootvegies/potato.dart';
import 'package:vegapp/screen/rootvegies/potatoes.dart';
import 'package:vegapp/screen/seasoning/ras_ei_hanount.dart';
import 'package:vegapp/screen/grocery/redbull.dart';
import 'package:vegapp/screen/grocery/riceflour.dart';
import 'package:vegapp/screen/vegitables/ridgegourd.dart';
import 'package:vegapp/screen/see%20all/seasoning/seasoning.dart';
import 'package:vegapp/screen/grocery/skittles.dart';
import 'package:vegapp/screen/fruits/stroberi.dart';
import 'package:vegapp/screen/fruits/swettamarind.dart';
import 'package:vegapp/screen/fruits/watermelon.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  //category

  List<String> img = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdleyegCKnE1A57mdFSkHnUZTV8wfVuCIqpzcnqn8kQ_FkiEXP-GpPF6bzA6YkOX2xMd8&usqp=CAU',
 'https://4.imimg.com/data4/RL/XY/MY-33921750/rose-flower-500x500.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKXwdtIvVXwnvddl9LQoC3qBVGlfknIJvOXx6kZ478Qp5rcrAno9towGBOIyKqLT7uwZ8&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWXUPzKbWze88qp2LPqGZx7eqJBHTehKXZxQ&usqp=CAU',
    'https://veeere.com/pub/media/catalog/category/Pulses_1.png',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJkkapioiq0vXhkdbED661ufr9CiC0nyrrv0Tvwr7dnEUrgC9JjeNu1MQqUr8uzftD0h8&usqp=CAU',
    'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4370874.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0_ddfZj2_9agCI4mDD43d6g6fy9SriiXNRc51Hzmfcx-xQ7Og59YTVdEL1mWUKoAUNiQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0YFBBOtYwh3dtSffMOcsRmzjf_gS69Z12fA&usqp=CAU',
  ];
  List<String> name = ['Atta','Flower', 'Root Vegies','Seasoning','Pules','Bath&Body','Vegetables','Fruits','Grocery'];
  List<String>route=[AttaScreen.routeName,FlowerScreen.routeName,RootVegiesScreen.routeName,SeasoningScreen.routeName,'','',VegetablesScreen.routeName,FruitsScreen.routeName,GroceryScreen.routeName];

  //seasoning
  List<String> iImg = [
    'https://5.imimg.com/data5/IX/VW/RB/SELLER-12007525/kashmeeri-chilli-masala-500x500.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuZeTnc3qoiPMzDF0CMv1B54SLxeEI-yEn9zW3gntxVvABJ_ZOoDcZs6HBZ56xjGMrevI&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDsZEmK6N7-ADlV2Zbwlv44UMN-k-UO0SBzRQ_fRH4LaZ3-L7KAtKFJZSuLMyFIiaBMJA&usqp=CAU',
    'https://drlogy.com/assets/uploads/img/admin/knowledgefeed/b1dfaa7d5ec4bab854b271a7f02a706e.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjSfIm1qnuQVbha-BmmtfjfQqYbL8b93LNAmx9Ls9gfEVzZuceIFPqMj-KENVtY-zMABc&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbGToIhNAkDd2Pf8-kZqeajkiLyweSRvFkntfUtG9gXCz-6Fc1pXqPWGlnMQ_L4kTHzV0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJnARTDF_mbk0L3ackOFHHw7AobnV8qckpsBJR7_hgA0Wmo2XtqE304fvCXL4LxbTEvH0&usqp=CAU',
  ];
  List<String> iName = [
    'RAS EI hanout',
    'GrassCartoon',
    'Ginger Indian',
    'Curry Leaves',
    'Chilli Green',
    'Lemon',
    'Garlic',
  ];
  List<String> iUnit = [
    '10 Gram',
    '10 Gram',
    '5 Piece',
    '100 Gram',
    '200 Gram',
    '1 Kg',
    '200 Gram',
  ];
  List<String> iPrice = [
    '\u{20B9} 7.9',
    '\u{20B9} 7.9',
    '\u{20B9} 50',
    '\u{20B9} 8',
    '\u{20B9} 30',
    '\u{20B9} 120',
    '\u{20B9} 30',
  ];
  List<String> iRoute = [
    RasEIHanount.routeName,
    GrassCartoon.routeName,
    GingerIndian.routeName,
    CurryLeaves.routeName,
    ChilliGreen.routeName,
    Lemon.routeName,
    Garlic.routeName,
  ];
   List<Grocery> grocery = [
    Grocery(
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToCpKyErAZ3n7iNRQeYqtUnqlpIOOZu3YlzpCDuoNt_WsS41iYrx3sOTbbW5TdaZYaZEU&usqp=CAU',
    'Skittles',
     '33 Gram',
   '\u{20B9}46',
    Skittles.routeName,
    ),
    Grocery(
      'https://5.imimg.com/data5/NS/XU/MY-17977060/common-fig-500x500.png',
      'Figs',
      '500 Gram',
      '\u{20B9}500',
      Figs.routeName,
    ),
    Grocery(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1MO7QD3KCbGa76QAlJbvMvNZDncWnAkFLTBbK7PLL6xZa1_Eop-SUbxgIfdshLPpwYW4&usqp=CAU',
      'Dry Fruits',
      '1 Kg',
      '\u{20B9}405',
      DryFruits.routeName,
    ),
    Grocery(
      'https://img2.exportersindia.com/product_images/bc-full/dir_128/3829655/jute-rice-bags-2441832.jpg',
      'Rice Flour',
      '500 Gram',
      '\u{20B9}27',
      RiceFlour.routeName,
    ),
    Grocery(
      'https://3.imimg.com/data3/SF/TL/GLADMIN-55748/almond-nuts-500x500.jpg',
      'Almonds',
      '500 Gram',
      '\u{20B9}407',
      Almonds.routeName,
    ),
    Grocery(
      'https://thumbs.dreamstime.com/b/fresh-champignion-mushrooms-blue-box-20070272.jpg',
      'Mashroom',
      '200 Gram',
      '\u{20B9}44',
      Mashroom.routeName,
    ),
    Grocery(
      'https://media.istockphoto.com/photos/can-of-red-bull-on-a-bed-of-ice-picture-id539272093?k=20&m=539272093&s=612x612&w=0&h=OnkDOgNY73R16TMDR-IK7i5tyTh3W51Xu5c3rVDF-hU=',
      'Red Bull',
      '1 Piece',
      '\u{20B9} 30',
      RedBull.routeName,
    ),
  ];
  static List<Fruits> fruits = [
    Fruits(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXLvT090Lyboo7sgfVtjtoUZI4bqIgUA_0DmB-6jKXC79DAN3ZBwpTqlSrG62ywnnQ-FE&usqp=CAU',
      'Coconut',
      '1 Piece',
      '₹100',
      Coconut.routeName,
    ),
    Fruits(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrI3sH0AqGz0ihgTp_DGWK2eeC_k8YrderL53tNR9tIk2m_RKWwF-ymYQ9X6CbBZDWkTA&usqp=CAU',
      'Sweet Tamarind',
      '250 Gram',
      '\u{20B9} 100',
      SweetTamarind.routeName,
    ),
    Fruits(
      'https://res.cloudinary.com/fleetnation/image/private/c_fit,w_1120/g_south,l_text:style_gothic2:%C2%A9%20waldenstroem,o_20,y_10/g_center,l_watermark4,o_25,y_50/v1493906071/yu02uqnckpkw966azyx3.jpg',
      'Kiwi Green',
      '3 Piece',
      '\u{20B9} 80',
      kiwiGreen.routeName,
    ),
    Fruits(
      'https://static.vecteezy.com/system/resources/thumbnails/003/281/465/small/green-pear-fruit-isolated-on-white-background-free-photo.jpg',
      'Pears Green',
      '4 Piece',
      '\u{20B9} 80',
      PearsGreen.routeName,
    ),
    Fruits(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5-eq1S9C9YldKd1Rmx7YSQz9sSoKScJpl-uXRcrWE7kXPV4g3JwN3CYO89AQ6hErECS8&usqp=CAU',
      'Musk Mealons',
      '2 Kg',
      '\u{20B9} 120',
      MuskMelons.routeName,
    ),
    Fruits(
      'https://thumbs.dreamstime.com/b/watermelon-slice-10432108.jpg',
      'WaterMelon',
      '1 Piece',
      '\u{20B9} 109',
      WaterMelon.routeName,
    ),
    Fruits(
      'https://cdn.shopify.com/s/files/1/0004/6157/0107/products/Strawberry_900x.png?v=1593190272',
      'Stroberi',
      '1 Kg',
      '\u{20B9} 80',
      Stroberi.routeName,
    ),
  ];
  static List<Vegitable> vegitable = [
    Vegitable(
      'https://thumbs.dreamstime.com/b/cabbage-isolated-white-background-und-5913263.jpg',
      'Cabbage',
      '1 Piece',
      '\u{20B9} 20',
      Cabbage.routeName,
    ),
    Vegitable(
      'https://t3.ftcdn.net/jpg/03/36/29/26/360_F_336292653_D7vlCbHuMvHyoulmj1XweCihlykoEUnI.jpg',
      ' Bitter Gourd',
      '500 Gram',
      '\u{20B9} 15',
      BitterGourd.routeName,
    ),
    Vegitable(
      'https://t3.ftcdn.net/jpg/03/08/44/22/360_F_308442251_S08zxJxtxOLFGBrjDkeMGSwxMEB1aK5s.jpg',
      'Ridge Gourd',
      '500 Gram',
      '\u{20B9} 25',
      Ridgeground.routeName,
    ),
    Vegitable(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8VMDsY1hoDisr_HEJh17V35cqyADehQtE07zdyV6n3zD_UmPqIQYgFEJwkFWnGNCRPHs&usqp=CAU',
      'Paalak',
      '500 Gram',
      '\u{20B9} 40',
      Paalak.routeName,
    ),
    Vegitable(
      'https://image.freepik.com/free-photo/cucumber-vegetable-isolated-white-background_42033-135.jpg',
      'Cucumber',
      '500 Gram',
      '\u{20B9} 24',
      Cucumber.routeName,
    ),
    Vegitable(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpizPzOK8nBK6guNZccufv_fOsILsxJPuboOkNsdF2Bx3DC8soGHBw2jP2-2m-GRNtFJU&usqp=CAU',
      'Coccinia',
      '500 Gram',
      '\u{20B9} 40',
      Coccinia.routeName,
    ),
    Vegitable(
      'https://img.freepik.com/free-photo/raw-okra-ladyfingers-isolated-white-background_14349-552.jpg?size=626&ext=jpg',
      'Bhindi',
      '500 Gram',
      '\u{20B9} 14',
      Bhendi.routeName,
    ),
    Vegitable(
      'https://st2.depositphotos.com/1009329/9365/i/950/depositphotos_93650074-stock-photo-bunch-of-fresh-coriander-leaves.jpg',
      'Corinder Bunch',
      '200 Gram',
      '\u{20B9} 14',
      Corinderbunch.routeName,
    ),
  ];
  static List<RootVegies> rootvegies = [
    RootVegies(
      'https://5.imimg.com/data5/RV/HE/PX/SELLER-33434421/white-sweet-potato-500x500.jpg',
      'Potatoes',
      '1 Kg',
      '\u{20B9} 20',
      Potatoes.routeName,
    ),
    RootVegies(
        'https://t3.ftcdn.net/jpg/02/99/43/48/360_F_299434842_UF1e0k44KUpkdtAEu0XbbPVnTHFuRwAm.jpg',
        'Carrot Orange ',
        '500 Gram',
        '\u{20B9} 30',
        Carrotorange.routeName),
    RootVegies(
      'data:image/jpeg;base64,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',
      'Potato',
      '2 Kg',
      '\u{20B9} 28',
      Potato.routeName,
    ),
    RootVegies(
      'http://ocdn.eu/images/pulscms/YjA7MDA_/61b48c9fe44623f22315f7563538ec88.jpeg',
      'Onion',
      '1 Kg',
      '\u{20B9} 25',
      Onion.routeName,
    ),
    RootVegies(
      'https://i2.wp.com/kashmirlife.net/wp-content/uploads/2018/09/beetroot.jpg?resize=696%2C503&ssl=1',
      'Beet Root',
      '1 Kg',
      '\u{20B9} 30',
      Beetroot.routeName,
    ),
    RootVegies(
      'https://thumbs.dreamstime.com/b/fresh-broccoli-isolate-white-background-green-cabbage-broccoli-white-background-141912531.jpg',
      'Cauliflower',
      '1 Piece',
      '\u{20B9} 40',
      Cauliflower.routeName,
    ),
    RootVegies(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUU4d8eChCLq6Jejo5PqlLi2ALtaQ-yc0GfyzyxvblDkmGaRZtsWvERazh5qXxEDa8LoM&usqp=CAU',
        'Mooli',
        '20.5 Kg',
        '\u{20B9} 200.5',
        Mooli.routeName),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      child: Column(
        children: [

          //categories
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                height: 120,
                child: Expanded(
                  child: Padding(
                    padding:EdgeInsets.only(left: 5),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: name.length,
                        itemBuilder: (context,index){
                          return InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(route[index]);
                            },
                            child: Card(
                              elevation: 5,
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              // shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                height: MediaQuery.of(context).size.height,
                                // width: 80,
                                // width: MediaQuery.of(context).size.width/5,
                                width: 100,
                                //color: Colors.orange,
                                decoration: BoxDecoration(
                                  // boxShadow: BoxShadow(blurRadius: 12) ,
                                  image: DecorationImage(
                                    image: NetworkImage(img[index]),
                                    // fit: BoxFit.fill,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    name[index],
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                alignment: Alignment.bottomCenter,
                              ),
                            ),
                          );
                    }),
                  ),
                ),
              ),
            ],
          ),

          //seasoning

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 30),
                  child: Text(
                    'Seasoning',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  // onPressed: () {
                  //   Navigator.pushNamed(context,Seasoning.routeName,
                  //   );
                  //},
                  child: Padding(
                    padding: EdgeInsets.only(right: 16, top: 30),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(SeasoningScreen.routeName);
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 220,
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: iName.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 5,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(iRoute[index]);
                            },
                            child: Container(
                              // height: MediaQuery.of(context).size.height,
                              // width: 150,
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                //  borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: NetworkImage(iImg[index]),
                                  fit: BoxFit.fitWidth,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 6, top: 100),
                                      child: Text(
                                        iName[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Text(
                                        iPrice[index] + '/' + iUnit[index],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    AddButton(),
                                  ]),
                              alignment: Alignment.bottomLeft,
                              // height: 500,
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),

          //grocery

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 30),
                  child: Text(
                    'Grocery',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16, top: 30),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(GroceryScreen.routeName);
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 220.0,
                child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: grocery.length,
                      itemBuilder: (context, index) {
                        final Grocery groceries = grocery[index];
                        return Card(
                          elevation: 5,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(groceries.route);
                            },
                            child: Container(
                              // height: MediaQuery.of(context).size.height,
                              // width: 150,
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                //  borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: NetworkImage(groceries.image),
                                  fit: BoxFit.fitWidth,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 6, top: 100),
                                      child: Text(
                                        groceries.name,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Text(
                                        groceries.price + '/' + groceries.unit,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    AddButton(),
                                  ]),
                              alignment: Alignment.bottomLeft,
                              // height: 500,
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),

          //fruits

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 30),
                  child: Text(
                    'Fruits',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16, top: 30),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(FruitsScreen.routeName);
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 220.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: fruits.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(fruits[index].route);
                          },
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(fruits[index].image),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 6, top: 100),
                                    child: Text(
                                      fruits[index].name,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Text(
                                      fruits[index].price +
                                          '/' +
                                          fruits[index].unit,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  AddButton(),
                                ]),
                            alignment: Alignment.bottomLeft,
                            // height: 500,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),

          //root vegies

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 30),
                  child: Text(
                    'Root Vegies',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16, top: 30),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(RootVegiesScreen.routeName);
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 220.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: rootvegies.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(rootvegies[index].route);
                          },
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(rootvegies[index].image),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 6, top: 100),
                                    child: Text(
                                      rootvegies[index].name,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Text(
                                      rootvegies[index].price +
                                          '/' +
                                          rootvegies[index].unit,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  AddButton(),
                                ]),
                            alignment: Alignment.bottomLeft,
                            // height: 500,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),

          //vegetables

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 30),
                  child: Text(
                    'Vegetables',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16, top: 30),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(VegetablesScreen.routeName);
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 220.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: vegitable.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(vegitable[index].route);
                          },
                          child: Container(
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(vegitable[index].image),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 6, top: 100),
                                    child: Text(
                                      vegitable[index].name,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Text(
                                      vegitable[index].price +
                                          '/' +
                                          vegitable[index].unit,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  AddButton(),
                                ]),
                            alignment: Alignment.bottomLeft,
                            // height: 500,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

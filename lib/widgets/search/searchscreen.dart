import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:vegapp/button/add_custombutton.dart';
import 'package:vegapp/screen/fruits/Orange.dart';
import 'package:vegapp/screen/fruits/apple.dart';
import 'package:vegapp/screen/fruits/banana.dart';
import 'package:vegapp/screen/fruits/coconut.dart';
import 'package:vegapp/screen/fruits/coconut1.dart';
import 'package:vegapp/screen/fruits/cranberries.dart';
import 'package:vegapp/screen/fruits/custardapple.dart';
import 'package:vegapp/screen/fruits/grepes.dart';
import 'package:vegapp/screen/fruits/kiwigreen.dart';
import 'package:vegapp/screen/fruits/muskmelons.dart';
import 'package:vegapp/screen/fruits/papaya.dart';
import 'package:vegapp/screen/fruits/pearsgreen.dart';
import 'package:vegapp/screen/fruits/pineapple.dart';
import 'package:vegapp/screen/fruits/pomegrante.dart';
import 'package:vegapp/screen/fruits/stroberi.dart';
import 'package:vegapp/screen/fruits/swettamarind.dart';
import 'package:vegapp/screen/fruits/watermelon.dart';
import 'package:vegapp/screen/grocery/almonds.dart';
import 'package:vegapp/screen/grocery/dryfruits.dart';
import 'package:vegapp/screen/grocery/figs.dart';
import 'package:vegapp/screen/grocery/mashroom.dart';
import 'package:vegapp/screen/grocery/redbull.dart';
import 'package:vegapp/screen/grocery/riceflour.dart';
import 'package:vegapp/screen/grocery/skittles.dart';
import 'package:vegapp/screen/rootvegies/beetroot.dart';
import 'package:vegapp/screen/rootvegies/carrotorange.dart';
import 'package:vegapp/screen/rootvegies/cauliflower.dart';
import 'package:vegapp/screen/rootvegies/mooli.dart';
import 'package:vegapp/screen/rootvegies/onion.dart';
import 'package:vegapp/screen/rootvegies/potato.dart';
import 'package:vegapp/screen/rootvegies/potatoes.dart';
import 'package:vegapp/screen/rootvegies/sweetcorn.dart';
import 'package:vegapp/screen/seasoning/babycorn.dart';
import 'package:vegapp/screen/seasoning/chilligreen.dart';
import 'package:vegapp/screen/seasoning/curryleaves.dart';
import 'package:vegapp/screen/seasoning/garlic.dart';
import 'package:vegapp/screen/seasoning/gingerindian.dart';
import 'package:vegapp/screen/seasoning/grasscartoon.dart';
import 'package:vegapp/screen/seasoning/lemon.dart';
import 'package:vegapp/screen/seasoning/ras_ei_hanount.dart';
import 'package:vegapp/screen/vegitables/Lauki.dart';
import 'package:vegapp/screen/vegitables/Methi%20Leaves.dart';
import 'package:vegapp/screen/vegitables/amala.dart';
import 'package:vegapp/screen/vegitables/bhendi.dart';
import 'package:vegapp/screen/vegitables/bittergourd.dart';
import 'package:vegapp/screen/vegitables/brinjalnagpure.dart';
import 'package:vegapp/screen/vegitables/cabbage.dart';
import 'package:vegapp/screen/vegitables/coccinia.dart';
import 'package:vegapp/screen/vegitables/corianderbunch.dart';
import 'package:vegapp/screen/vegitables/cucumber.dart';
import 'package:vegapp/screen/vegitables/greencapsicum.dart';
import 'package:vegapp/screen/vegitables/paalak.dart';
import 'package:vegapp/screen/vegitables/ridgegourd.dart';
import 'package:vegapp/screen/vegitables/tomato.dart';
import 'package:vegapp/shimmer/veg_card_shimmer.dart';
import 'package:vegapp/widgets/search/searchitem.dart';

class SearchScreen extends StatefulWidget {
  static String routeName = '/searchScreen';

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  static List<Search> search = [
    Search(
      'https://5.imimg.com/data5/IX/VW/RB/SELLER-12007525/kashmeeri-chilli-masala-500x500.png',
      'RAS EI hanout',
      '10 Gram',
      '\u{20B9}7.9',
      RasEIHanount.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuZeTnc3qoiPMzDF0CMv1B54SLxeEI-yEn9zW3gntxVvABJ_ZOoDcZs6HBZ56xjGMrevI&usqp=CAU',
      'GrassCartoon',
      '10 Gram',
      '\u{20B9}7.9',
      GrassCartoon.routeName,
    ),
    Search(
      'https://5.imimg.com/data5/RV/HE/PX/SELLER-33434421/white-sweet-potato-500x500.jpg',
      'Potatoes',
      '1 Kg',
      '\u{20B9}20',
      Potatoes.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToCpKyErAZ3n7iNRQeYqtUnqlpIOOZu3YlzpCDuoNt_WsS41iYrx3sOTbbW5TdaZYaZEU&usqp=CAU',
      'Skittles',
      '33 Gram',
      '\u{20B9}46',
      Skittles.routeName,
    ),
    Search(
      'https://5.imimg.com/data5/NS/XU/MY-17977060/common-fig-500x500.png',
      'Figs',
      '500 Gram',
      '\u{20B9}500',
      Figs.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1MO7QD3KCbGa76QAlJbvMvNZDncWnAkFLTBbK7PLL6xZa1_Eop-SUbxgIfdshLPpwYW4&usqp=CAU',
      'Dry Fruits',
      '1 Kg',
      '\u{20B9}405',
      DryFruits.routeName,
    ),
    Search(
      'https://img2.exportersindia.com/product_images/bc-full/dir_128/3829655/jute-rice-bags-2441832.jpg',
      'Rice Flour',
      '500 Gram',
      '\u{20B9}27',
      RiceFlour.routeName,
    ),
    Search(
      'https://3.imimg.com/data3/SF/TL/GLADMIN-55748/almond-nuts-500x500.jpg',
      'Almonds',
      '500 Gram',
      '\u{20B9}417',
      Almonds.routeName,
    ),
    Search(
      'https://thumbs.dreamstime.com/b/fresh-champignion-mushrooms-blue-box-20070272.jpg',
      'Mashroom',
      '200 Gram',
      '\u{20B9}44',
      Mashroom.routeName,
    ),
    Search(
      'https://thumbs.dreamstime.com/b/cabbage-isolated-white-background-und-5913263.jpg',
      'Cabbage',
      '1 Piece',
      '\u{20B9}20',
      Cabbage.routeName,
    ),
    Search(
      'https://t3.ftcdn.net/jpg/03/36/29/26/360_F_336292653_D7vlCbHuMvHyoulmj1XweCihlykoEUnI.jpg',
      ' Bitter Gourd',
      '500 Gram',
      '\u{20B9}25',
      BitterGourd.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNwob17o4R3t1AzkTNL5AeXtfOT4lrM_nyYO-1n5p4CAgDuVS1XrHCFvrd4poO-UDvhzQ&usqp=CAU',
      'Ridge Gourd',
      '500 Gram',
      '\u{20B9}25',
      Ridgeground.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8VMDsY1hoDisr_HEJh17V35cqyADehQtE07zdyV6n3zD_UmPqIQYgFEJwkFWnGNCRPHs&usqp=CAU',
      'Paalak',
      '500 Gram',
      '\u{20B9}40',
      Paalak.routeName,
    ),
    Search(
      'https://image.freepik.com/free-photo/cucumber-vegetable-isolated-white-background_42033-135.jpg',
      'Cucumber',
      '500 Gram',
      '\u{20B9}24',
      Cucumber.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpizPzOK8nBK6guNZccufv_fOsILsxJPuboOkNsdF2Bx3DC8soGHBw2jP2-2m-GRNtFJU&usqp=CAU',
      'Coccinia',
      '500 Gram',
      '\u{20B9}40',
      Coccinia.routeName,
    ),
    Search(
      'https://img.freepik.com/free-photo/raw-okra-ladyfingers-isolated-white-background_14349-552.jpg?size=626&ext=jpg',
      'Bhindi',
      '500 Gram',
      '\u{20B9}14',
      Bhendi.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDkNMUN97daX4HXjm34xhKCnnjJtv5PMsNnSyc5Fi3828vO1stE0PNzOtkKStKhYH4i_s&usqp=CAU',
      'Corinder Bunch',
      '200 Gram',
      '\u{20B9}20',
      Corinderbunch.routeName,
    ),
    Search(
      'https://5.imimg.com/data5/EV/LT/MY-48969557/fresh-methi-500x500.png',
      'Methi Leaves ',
      '300 Gram',
      '\u{20B9}40',
      MethiLeaves.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYQYw9GjW_ph3XjNHLL4EptVvDMiXDmGsJxkHfs2JhSgk4dFf8JT_e6ejlnC4_grCcIeI&usqp=CAU',
      'Carrot Orange ',
      '500 Gram',
      '\u{20B9}30',
      Carrotorange.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyjTGR9HKnM1iFC-BAWPZkLPb4mWWUWk2lTfSeNKizyj77wy8MrNnef7niYPuwOoT0zL4&usqp=CAU',
      'Ginger Indian',
      '5 Piece',
      '\u{20B9}50',
      GingerIndian.routeName,
    ),
    Search(
      'https://4.imimg.com/data4/RR/RR/GLADMIN-/wp-content-uploads-2016-04-brinjal-long-violet-500x500-400x400-500x500.jpg',
      'BrinajalNagpur',
      '500 Gram',
      '\u{20B9}30',
      BrinjalNagpure.routeName,
    ),
    Search(
      'https://media.istockphoto.com/photos/broken-coconut-picture-id492552666',
      'Coconut',
      '1 Piece',
      '\u{20B9}40',
      Coconut1.routeName,
    ),
    Search(
      'http://cdn.shopify.com/s/files/1/0536/3764/4474/products/Babycorn.png?v=1624338595',
      'Baby Corn',
      '150 Gram',
      '\u{20B9}15',
      BabyCorn.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqnwQNxOKrkB6wucnnhtNTv3_g_kYv3gYvLwrae09TIOUeXxN-jhm3y6smNLHw41vI6Bs&usqp=CAU',
      'Lauki',
      '1 Piece',
      '\u{20B9}29',
      Lauki.routeName,
    ),
    Search(
      'https://rukminim1.flixcart.com/image/416/416/jtsz3bk0/vegetable/b/8/4/2-potato-un-branded-no-whole-original-imafdsymh2aepaph.jpeg?q=70',
      'Potato',
      '2 Kg',
      '\u{20B9}28',
      Potato.routeName,
    ),
    Search(
      'https://5.imimg.com/data5/LD/NH/MY-7467985/amla-500x500.jpg',
      'Amala ',
      '500 Gram',
      '\u{20B9}70',
      Amala.routeName,
    ),
    Search(
      'https://5.imimg.com/data5/MC/EO/MY-12129325/fresh-green-capsicum-500x500.jpg',
      'Green Capsicum ',
      '55 Gram',
      '\u{20B9}18',
      GreenCapsicum.routeName,
    ),
    Search(
      'https://st4.depositphotos.com/1466240/40938/i/600/depositphotos_409388758-stock-photo-curry-leaves-white-background.jpg',
      'Curry Leaves ',
      '100 Gram',
      '\u{20B9}8',
      CurryLeaves.routeName,
    ),
    Search(
      'http://ocdn.eu/images/pulscms/YjA7MDA_/61b48c9fe44623f22315f7563538ec88.jpeg',
      'Onion',
      '1 Kg',
      '\u{20B9}25',
      Onion.routeName,
    ),
    Search(
      'https://i2.wp.com/kashmirlife.net/wp-content/uploads/2018/09/beetroot.jpg?resize=696%2C503&ssl=1',
      'Beet Root',
      '1 Kg',
      '\u{20B9}30',
      Beetroot.routeName,
    ),
    Search(
      'https://thumbs.dreamstime.com/b/fresh-broccoli-isolate-white-background-green-cabbage-broccoli-white-background-141912531.jpg',
      'Cauliflower',
      '1 Piece',
      '\u{20B9}40',
      Cauliflower.routeName,
    ),
    Search(
      'https://media.istockphoto.com/photos/corn-picture-id134173335?k=20&m=134173335&s=612x612&w=0&h=mAzL_-ZJtW-r6eSPGkIoqGCWvBptuZ1CfSh3l0klE1g=',
      'Sweet Corn',
      '100 Gram',
      '\u{20B9}150',
      SweetCorn.routeName,
    ),
    Search(
      'https://5.imimg.com/data5/SJ/LQ/MY-1232526/green-chillies-500x500.jpg',
      'Chilli Green',
      '200 Gram',
      '\u{20B9}30',
      ChilliGreen.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbGToIhNAkDd2Pf8-kZqeajkiLyweSRvFkntfUtG9gXCz-6Fc1pXqPWGlnMQ_L4kTHzV0&usqp=CAU',
      'Garlic',
      '200 Gram',
      '\u{20B9}30',
      Garlic.routeName,
    ),
    Search(
      'https://st2.depositphotos.com/1005063/7099/i/600/depositphotos_70995043-stock-photo-two-red-tomatoes-isolated-on.jpg',
      'Tomato',
      '10 Kg',
      '\u{20B9}70',
      Tomato.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9RTBZuhuKIAhl8gQAMzfA9T3oeoA3ZyDs4w&usqp=CAU',
      'Coconut',
      '1 Piece',
      '\u{20B9}100',
      Coconut.routeName,
    ),
    Search(
      'https://5.imimg.com/data5/YK/XG/MY-30125612/fresh-tamarind-500x500.jpg',
      'Sweet Tamarind',
      '250 Gram',
      '\u{20B9}100',
      SweetTamarind.routeName,
    ),
    Search(
      'https://sc02.alicdn.com/kf/U65b0ff39bb134344a34d2f0e0b5a5fabo/FRESH-KIWI-GREEN-COLOR-AND-YELLOW.jpg',
      'Kiwi Green',
      '3 Piece',
      '\u{20B9}80',
      kiwiGreen.routeName,
    ),
    Search(
      'https://4.imimg.com/data4/IB/QO/ANDROID-28328519/product-500x500.jpeg',
      'Custard Apple',
      '4 Piece',
      '\u{20B9}140',
      CustardApple.routeName,
    ),
    Search(
      'https://www.bigbasket.com/media/uploads/p/m/40048445_2-fresho-pear-green-imported.jpg',
      'Pears Green',
      '4 Piece',
      '\u{20B9}80',
      PearsGreen.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5-eq1S9C9YldKd1Rmx7YSQz9sSoKScJpl-uXRcrWE7kXPV4g3JwN3CYO89AQ6hErECS8&usqp=CAU',
      'Musk Mealons',
      '2 Kg',
      '\u{20B9}120',
      MuskMelons.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJnARTDF_mbk0L3ackOFHHw7AobnV8qckpsBJR7_hgA0Wmo2XtqE304fvCXL4LxbTEvH0&usqp=CAU',
      'Lemon',
      '1 Kg',
      '\u{20B9}120',
      Lemon.routeName,
    ),
    Search(
      'https://thumbs.dreamstime.com/b/watermelon-slice-10432108.jpg',
      'WaterMelon',
      '1 Piece',
      '\u{20B9}109',
      WaterMelon.routeName,
    ),
    Search(
      'https://cdn.shopify.com/s/files/1/0004/6157/0107/products/Strawberry_900x.png?v=1593190272',
      'Stroberi',
      '1 Kg',
      '\u{20B9}80',
      Stroberi.routeName,
    ),
    Search(
      'https://cdn.shopify.com/s/files/1/0104/1059/0266/products/Organic_Papaya.jpg?v=1612511248',
      'Papaya',
      '800 Gram',
      '\u{20B9}59',
      Papaya.routeName,
    ),
    Search(
      'https://live.staticflickr.com/65535/49496205511_a3de391082_b.jpg',
      'Grapes',
      '1 Kg',
      '\u{20B9}50',
      Grepes.routeName,
    ),
    Search(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUU4d8eChCLq6Jejo5PqlLi2ALtaQ-yc0GfyzyxvblDkmGaRZtsWvERazh5qXxEDa8LoM&usqp=CAU',
      'Mooli',
      '20.5 Kg',
      '\u{20B9}200.5',
      Mooli.routeName,
    ),
    Search(
      'https://media.istockphoto.com/photos/pomegranate-isolated-on-white-background-with-clipping-path-picture-id1152895164?k=20&m=1152895164&s=612x612&w=0&h=h9eJJ6Wuu8VDtOoVmp57u7AhvuZmmlQY2q-dqiyIOyU=',
      'Pomegrante',
      '7 Piece',
      '\u{20B9}600',
      Pomegranate.routeName,
    ),
    Search(
      'https://cdn.shopify.com/s/files/1/0066/7418/6301/products/50913eeb04768a5b1fa9985c16704d96_1600x.jpg?v=1610582043',
      'Orange',
      '1 Kg',
      '\u{20B9}10',
      Orange.routeName,
    ),
    Search(
      'https://media.istockphoto.com/photos/banana-bunch-picture-id173242750?k=20&m=173242750&s=612x612&w=0&h=dgXrAP6otDeY5h6fhy-SRmW-2dFOCKx1_hNS1lLWF7Y=',
      'Banana',
      '10.05 Piece',
      '\u{20B9}25.05',
      Banana.routeName,
    ),
    Search(
      'https://gardenandme.com/wp-content/uploads/2021/02/pineapple.jpg',
      'PineApple',
      '1 Piece',
      '\u{20B9}70',
      PineApple.routeName,
    ),
    Search(
      'https://media.istockphoto.com/photos/cranberries-picture-id481615534?k=20&m=481615534&s=612x612&w=0&h=0A-t1qI41PoRZ0mSXE3C6TCjEwe1B5o4JNa588hXbqI=',
      'Candberries',
      '1 Kg',
      '\u{20B9}100',
      Candberries.routeName,
    ),
    Search(
      'https://media.istockphoto.com/photos/can-of-red-bull-on-a-bed-of-ice-picture-id539272093?k=20&m=539272093&s=612x612&w=0&h=OnkDOgNY73R16TMDR-IK7i5tyTh3W51Xu5c3rVDF-hU=',
      'Red Bull',
      '1 Piece',
      '\u{20B9}30',
      RedBull.routeName,
    ),
    Search(
      'https://static9.depositphotos.com/1642482/1111/i/950/depositphotos_11111805-stock-photo-red-apples-and-half-of.jpg',
      'Apple',
      '2 Kg',
      '\u{20B9}71.5',
      Apple.routeName,
    ),
  ];



  var list;
  var random;
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  late bool isLoading ;

  @override
  void initState() {
    //list = List.generate(3, (i) => ListView());
    super.initState();
    random = Random();
    refreshList();


    isLoading = true;
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        isLoading=false;
      });
    });
  }

  Future<Null> refreshList() async {
    refreshKey.currentState?.show(atTop: true);
    await Future.delayed(Duration(seconds: 2));

    setState(() {
     // list = List.generate(random.nextInt(3), (i) => ListView());
    });

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Row(
          children: [
            Text(
              'Search Items',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () => showSearch(

              context: context,
              delegate: SearchPage<Search>(
                searchLabel: 'Search Items',
                itemStartsWith: true,
                suggestion: Container(

                  child: Padding(
                    padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                    child: ListView.builder(
                      itemCount: search.length,
                      itemBuilder: (context, index) {
                        final Search attas = search[index];

                        return Card(
                          elevation: 6,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(attas.route);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6),
                                      child: Image(
                                        height: 80,
                                        width: 80,
                                        image: NetworkImage(attas.image),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            attas.name,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            attas.unit,
                                            style:
                                            TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            attas.price,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                                color: Colors.deepOrange),
                                          ),
                                        ],
                                      ),
                                    ),
                                    AddButton1(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                builder: (contact) => Padding(
                  padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                  child: Card(
                    elevation: 6,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(contact.route);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Image(
                                  height: 80,
                                  width: 80,
                                  image: NetworkImage(contact.image),
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      contact.name,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      contact.unit,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      contact.price,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.deepOrange),
                                    ),
                                  ],
                                ),
                              ),
                              AddButton1(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                filter: (contact) => [
                  contact.image,
                  contact.name,
                  contact.unit,
                  contact.price,
                ],
                items: search,
                failure: Center(
                    child: Container(
                        child: Image.network(
                            'https://media2.giphy.com/media/fTzTrSGJkVGcciMrQr/source.gif'))),
              ),
            ),
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: [
          isLoading?Expanded(child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context,index)=>VegCartShimmer())):
          Expanded(
            child: RefreshIndicator(
              onRefresh: ()=>Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (a, b, c) =>SearchScreen(),
                      transitionDuration: Duration(seconds: 0))),
              child: Padding(
                padding: const EdgeInsets.only(top:10,left: 8, right: 8),
                child: ListView.builder(
                    itemCount: search.length,
                    itemBuilder: (context, index) {
                      final Search searches = search[index];
                      return Card(
                        elevation: 6,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(searches.route);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6),
                                    child: Image(
                                      height: 80,
                                      width: 80,
                                      image: NetworkImage(
                                        searches.image,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          searches.name,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          searches.unit,
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          searches.price,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color: Colors.deepOrange),
                                        ),
                                      ],
                                    ),
                                  ),
                                  AddButton1(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:vegapp/See_All/see_all.dart';
import 'package:vegapp/bottombar/cart.dart';
import 'package:vegapp/bottombar/cart1.dart';

import 'package:vegapp/bottombar/category.dart';
import 'package:vegapp/bottombar/profile/My_Delivery_Address.dart';
import 'package:vegapp/bottombar/profile/My_Order_Screen.dart';
import 'package:vegapp/bottombar/profile/profile.dart';
import 'package:vegapp/bottombar/profile/profile1.dart';
import 'package:vegapp/checkout.dart';

import 'package:vegapp/model/cartprovider.dart';
import 'package:vegapp/screen/Atta/Chickpeas.dart';
import 'package:vegapp/screen/Atta/Millet.dart';
import 'package:vegapp/screen/Atta/Wheat.dart';
import 'package:vegapp/screen/Atta/cornflour.dart';
import 'package:vegapp/screen/Atta/rise.dart';
import 'package:vegapp/screen/drawer%20screen/Payment.dart';
import 'package:vegapp/screen/drawer%20screen/ratingscreen.dart';
import 'package:vegapp/screen/flower/lily.dart';
import 'package:vegapp/screen/flower/lotus.dart';
import 'package:vegapp/screen/flower/rose.dart';
import 'package:vegapp/screen/flower/sunflower.dart';
import 'package:vegapp/screen/flower/tulips.dart';
import 'package:vegapp/screen/see%20all/atta/Atta.dart';

import 'package:vegapp/screen/see%20all/Fruits/Fruits.dart';
import 'package:vegapp/screen/see%20all/flower/flower.dart';
import 'package:vegapp/screen/see%20all/grocery/grocery.dart';
import 'package:vegapp/bottombar/home.dart';
import 'package:vegapp/screen/fruits/Orange.dart';
import 'package:vegapp/screen/fruits/apple.dart';
import 'package:vegapp/screen/fruits/banana.dart';
import 'package:vegapp/screen/fruits/coconut1.dart';
import 'package:vegapp/screen/fruits/cranberries.dart';
import 'package:vegapp/screen/fruits/grepes.dart';
import 'package:vegapp/screen/fruits/papaya.dart';
import 'package:vegapp/screen/fruits/pineapple.dart';
import 'package:vegapp/screen/fruits/pomegrante.dart';
import 'package:vegapp/screen/grocery/almonds.dart';
import 'package:vegapp/screen/grocery/marri.dart';
import 'package:vegapp/screen/see%20all/rootvegies/rootvegies.dart';
import 'package:vegapp/screen/rootvegies/beetroot.dart';
import 'package:vegapp/screen/rootvegies/sweetcorn.dart';
import 'package:vegapp/screen/seasoning/babycorn.dart';
import 'package:vegapp/screen/see%20all/vegitables/vegetables.dart';
import 'package:vegapp/screen/vegitables/Lauki.dart';
import 'package:vegapp/screen/vegitables/Methi%20Leaves.dart';
import 'package:vegapp/screen/vegitables/amala.dart';
import 'package:vegapp/screen/vegitables/bhendi.dart';
import 'package:vegapp/screen/vegitables/bittergourd.dart';
import 'package:vegapp/screen/vegitables/brinjalnagpure.dart';
import 'package:vegapp/screen/vegitables/cabbage.dart';
import 'package:vegapp/screen/rootvegies/carrotorange.dart';
import 'package:vegapp/screen/rootvegies/cauliflower.dart';
import 'package:vegapp/screen/seasoning/chilligreen.dart';
import 'package:vegapp/screen/vegitables/coccinia.dart';
import 'package:vegapp/screen/fruits/coconut.dart';
import 'package:vegapp/screen/vegitables/corianderbunch.dart';
import 'package:vegapp/screen/vegitables/cucumber.dart';
import 'package:vegapp/screen/seasoning/curryleaves.dart';
import 'package:vegapp/screen/fruits/custardapple.dart';
import 'package:vegapp/screen/grocery/dryfruits.dart';
import 'package:vegapp/screen/drawer%20screen/faqscreen.dart';
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
import 'package:vegapp/screen/vegitables/greencapsicum.dart';
import 'package:vegapp/screen/vegitables/paalak.dart';
import 'package:vegapp/screen/fruits/pearsgreen.dart';
import 'package:vegapp/screen/rootvegies/potato.dart';
import 'package:vegapp/screen/rootvegies/potatoes.dart';
import 'package:vegapp/screen/seasoning/ras_ei_hanount.dart';
import 'package:vegapp/screen/grocery/redbull.dart';
import 'package:vegapp/screen/grocery/riceflour.dart';
import 'package:vegapp/screen/vegitables/ridgegourd.dart';
import 'package:vegapp/screen/vegitables/tomato.dart';
import 'package:vegapp/splace.dart';
import 'package:vegapp/widgets/search/searchscreen.dart';
import 'package:vegapp/screen/see%20all/seasoning/seasoning.dart';
import 'package:vegapp/screen/grocery/skittles.dart';
import 'package:vegapp/screen/fruits/stroberi.dart';
import 'package:vegapp/screen/fruits/swettamarind.dart';
import 'package:vegapp/screen/fruits/watermelon.dart';
import 'package:flutter/services.dart';
import 'model/product_model.dart';
import 'mydrawer.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.deepOrange, // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartProvider>(
          create: (context) => CartProvider(),
        ),

      ],
      child: MaterialApp(
        title: 'Grocer app',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepOrange.shade900,
          canvasColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,

        ),


        home: Splace(),

        routes: {
          AddCart.routeName: (ctx) => AddCart(),
          FaqScreen.routeName: (ctx) => FaqScreen(),
          SearchScreen.routeName: (ctx) => SearchScreen(),
          RasEIHanount.routeName: (ctx) => RasEIHanount(),
          GrassCartoon.routeName: (ctx) => GrassCartoon(),
          GingerIndian.routeName: (ctx) => GingerIndian(),
          CurryLeaves.routeName: (ctx) => CurryLeaves(),
          ChilliGreen.routeName: (ctx) => ChilliGreen(),
          Garlic.routeName: (ctx) => Garlic(),
          Lemon.routeName: (ctx) => Lemon(),
          Skittles.routeName: (ctx) => Skittles(),
          Figs.routeName: (ctx) => Figs(),
          DryFruits.routeName: (ctx) => DryFruits(),
          RiceFlour.routeName: (ctx) => RiceFlour(),
          Almonds.routeName: (ctx) => Almonds(),
          Mashroom.routeName: (ctx) => Mashroom(),
          RedBull.routeName: (ctx) => RedBull(),
          Coconut.routeName: (ctx) => Coconut(),
          SweetTamarind.routeName: (ctx) => SweetTamarind(),
          kiwiGreen.routeName: (ctx) => kiwiGreen(),
          CustardApple.routeName: (ctx) => CustardApple(),
          PearsGreen.routeName: (ctx) => PearsGreen(),
          MuskMelons.routeName: (ctx) => MuskMelons(),
          WaterMelon.routeName: (ctx) => WaterMelon(),
          Stroberi.routeName: (ctx) => Stroberi(),

          Potatoes.routeName: (ctx) => Potatoes(),
          Carrotorange.routeName: (ctx) => Carrotorange(),
          Potato.routeName: (ctx) => Potato(),
          Onion.routeName: (ctx) => Onion(),
          Beetroot.routeName: (ctx) => Beetroot(),
          Cauliflower.routeName: (ctx) => Cauliflower(),
          Mooli.routeName: (ctx) => Mooli(),

          Cabbage.routeName: (ctx) => Cabbage(),
          BitterGourd.routeName: (ctx) => BitterGourd(),
          Ridgeground.routeName: (ctx) => Ridgeground(),
          Paalak.routeName: (ctx) => Paalak(),
          Cucumber.routeName: (ctx) => Cucumber(),
          Coccinia.routeName: (ctx) => Coccinia(),
          Bhendi.routeName: (ctx) => Bhendi(),
          Corinderbunch.routeName: (ctx) => Corinderbunch(),

          MethiLeaves.routeName: (ctx) => MethiLeaves(),
          BrinjalNagpure.routeName: (ctx) => BrinjalNagpure(),
          BabyCorn.routeName: (ctx) => BabyCorn(),
          Lauki.routeName: (ctx) => Lauki(),
          Amala.routeName: (ctx) => Amala(),
          GreenCapsicum.routeName: (ctx) => GreenCapsicum(),
          SweetCorn.routeName: (ctx) => SweetCorn(),
          Tomato.routeName: (ctx) => Tomato(),
          Coconut1.routeName: (ctx) => Coconut1(),
          Papaya.routeName: (ctx) => Papaya(),
          Grepes.routeName: (ctx) => Grepes(),
          Pomegranate.routeName: (ctx) => Pomegranate(),
          Orange.routeName: (ctx) => Orange(),
          Banana.routeName: (ctx) => Banana(),
          PineApple.routeName: (ctx) => PineApple(),
          Candberries.routeName: (ctx) => Candberries(),
          Apple.routeName: (ctx) => Apple(),
          CustardApple.routeName: (ctx) => CustardApple(),
          Candberries.routeName: (ctx) => Candberries(),
          Apple.routeName: (ctx) => Apple(),

          SeasoningScreen.routeName: (ctx) => SeasoningScreen(),
          VegetablesScreen.routeName: (ctx) => VegetablesScreen(),
          AttaScreen.routeName: (ctx) => AttaScreen(),
          GroceryScreen.routeName: (ctx) => GroceryScreen(),
          FlowerScreen.routeName: (ctx) => FlowerScreen(),
          Marri.routeName: (ctx) => Marri(),
          FruitsScreen.routeName: (ctx) => FruitsScreen(),
          RootVegiesScreen.routeName: (ctx) => RootVegiesScreen(),
          RatingScreen.routeName: (ctx) => RatingScreen(),

          CategoryScreen.routeName: (ctx) => CategoryScreen(),
          Profile1Screen.routeName: (ctx) => Profile1Screen(),
          Profile.routeName: (ctx) => Profile(),
          Cart.routeName: (ctx) => Cart(),

          //Atta

          MilletScreen.routeName: (ctx) => MilletScreen(),
          Wheat.routeName: (ctx) => Wheat(),
          RiceScreen.routeName: (ctx) => RiceScreen(),
          ChickpeasScreen.routeName: (ctx) => ChickpeasScreen(),
          CornFlourScreen.routeName: (ctx) => CornFlourScreen(),

          //flower

          RoseScreen.routeName: (ctx) => RoseScreen(),
          LotusScreen.routeName: (ctx) => LotusScreen(),
          SunFlowerScreen.routeName: (ctx) => SunFlowerScreen(),
          LilyScreen.routeName: (ctx) => LilyScreen(),
          TulipsScreen.routeName: (ctx) => TulipsScreen(),
          PaymentScreen.routeName:(ctx)=>PaymentScreen(),
          CheckOutscreen.routeName:(ctx)=>CheckOutscreen(),

          //Profile
          MyDeliveryAddress.routeName:(ctx)=>MyDeliveryAddress(),
          MyOrderScreen.routeName:(ctx)=>MyOrderScreen(),

        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isVisible = true;

  late ScrollController controller;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screen = [

    MyHomePage(),
    CategoryScreen(),
    Cart(),
   Profile1Screen(),
  ];



  //hide bottom
  @override
  void initState() {
    super.initState();
    controller = ScrollController();
    controller.addListener(() {
      setState(() {
        _isVisible =
            controller.position.userScrollDirection == ScrollDirection.forward;
      });
    });
  }

 int _currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          elevation: 0,
          titleSpacing: 20,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Grocer',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                textAlign: TextAlign.start,
              ),
              Text(
                'THE ALL IN ONE FOOD SHOP',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: CircleAvatar(
                      backgroundColor: Colors.deepOrange.shade400,
                      radius: 30,
                      child: Icon(
                        Icons.menu_outlined,
                        color: Colors.white,
                        size: 20,
                      )));
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                  // radius: 30,
                  backgroundColor: Colors.deepOrange.shade400,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(SearchScreen.routeName);
                    },
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 20,
                    ),
                  )),
            ),
          ],
        ),
      ),
    drawer: ConstrainedBox(

          constraints: BoxConstraints(maxWidth: 250),
          child: MyDrawer()),

      body: screen[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.dashboard,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.white,
          ),
          InkWell(
            onTap: (){
            // Navigator.of(context).pushNamed(Profile1Screen.routeName);
            },
            child: Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
          ),

        ],
        color: Colors.deepOrange,
        buttonBackgroundColor: Colors.deepOrange,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),

    );
  }
}



import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vegapp/db/db_provider.dart';
import 'package:vegapp/model/cart_db_model.dart';


class CartProvider with ChangeNotifier{

  DBProvider db = DBProvider.db;
  int _counter = 0 ;
  int get counter => _counter;

  double _totalPrice = 0.0 ;
  double get totalPrice => _totalPrice;

  late Future<List<CartDbModel>> _cart ;
  Future<List<CartDbModel>> get cart => _cart ;

  Future<List<CartDbModel>> getData () async {
    _cart = db.getCartList();
    return _cart ;
  }


  void _setPrefItems()async{
    SharedPreferences prefs = await SharedPreferences.getInstance() ;
    prefs.setInt('cart_item', _counter);
    prefs.setDouble('total_price', _totalPrice);
    notifyListeners();
  }

  void _getPrefItems()async{
    SharedPreferences prefs = await SharedPreferences.getInstance() ;
    _counter = prefs.getInt('cart_item') ?? 0;
    _totalPrice = prefs.getDouble('total_price') ?? 0.0;
    notifyListeners();
  }


  void addTotalPrice (double productPrice){
    _totalPrice = _totalPrice +productPrice ;
    _setPrefItems();
    notifyListeners();
  }

  void removeTotalPrice (double productPrice){
    _totalPrice = _totalPrice  - productPrice ;
    _setPrefItems();
    notifyListeners();
  }

  double getTotalPrice (){
    _getPrefItems();
    return  _totalPrice ;
  }


  void addCounter (){
    _counter++;
    _setPrefItems();
    notifyListeners();
  }

  void removerCounter (){
    _counter--;
    _setPrefItems();
    notifyListeners();
  }

  int getCounter (){
    _getPrefItems();
    return  _counter ;

  }
}



// import 'package:flutter/cupertino.dart';
// import 'package:vegapp/model/items.dart';

// class CartProvider with ChangeNotifier{
//   List<Item> _items=[];
//   double _price=0.0;
//   void add(Item item, ){
//     _items.add(item);
//     _price += item.price;
//     notifyListeners();

//   }
//   void remove(Item item){
//     _items.remove(item);
//     _price += item.price;
//     notifyListeners();
//
//   }


//   int get count{
//     return _items.length;
//   }
//   dynamic get totalprice{
//     return _price;
//   }

//   List<Item>get basketitem{
//     return _items ;
//   }
// }
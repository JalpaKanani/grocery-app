import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:vegapp/model/product_model.dart';

import '../model/cart_db_model.dart';

class DBProvider {
  final DB_NAME = 'cart.db';

  /////// Table Names
  final TABLE_CART = 'cart';

  /////// Field Names
  final ID = 'id'; //cart_id
  final PRODUCT_ID = 'product_id';
  final NAME = 'name';
  final IMAGE = 'image';
  final PRICE = 'price';
  final UNIT = 'unit';
  // final UNITS = 'units';  //25-3-22
  final QTY = 'qty';

  static final DBProvider db = DBProvider._();

  DBProvider._();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, DB_NAME);

//    var databasesPath = await getDatabasesPath();
//    String path = join(databasesPath, DB_NAME);

    return await openDatabase(
      path,
      version: 3,
      onOpen: (db) {},
      onUpgrade: (db, oldVersion, newVersion) async {
        print("onUpgrade >>>>>>>>>>>>>>> $oldVersion :: $oldVersion");
        // var batch = db.batch();
        // if (oldVersion == 1) {
        //   // We update existing table and create the new tables
        //   _updateTableCompanyV1toV2(batch);
        //   _createTableEmployeeV2(batch);
        // }
        // await batch.commit();
      },
      onCreate: (db, version) async {
        await db.execute("CREATE TABLE $TABLE_CART ("
            "$ID INTEGER PRIMARY KEY AUTOINCREMENT,"
            "$PRODUCT_ID INTEGER,"
            "$NAME TEXT,"
            "$IMAGE TEXT,"
            "$PRICE TEXT,"
            "$UNIT TEXT,"
            //  "$UNITS TEXT," //  //25-3-22
            "$QTY INTEGER"
            ")");
      },
    );
  }

  /* addUser(User user) async {
    final db = await database;
    var raw = await db.insert(
      TABLE_USER,
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    //////////// Another Way ////////////
//    var raw2 = await db.rawInsert("INSERT Into $TABLE_USER ($NAME,$CITY)"
//        " VALUES (${user.name},${user.city})");

    return raw;
  }

  Future<User> getUser(int id) async {
    final db = await database;
    var response =
        await db.query(TABLE_USER, where: '$ID = ?', whereArgs: [id]);
    return response.isNotEmpty ? User.fromMap(response.first) : null;
  }*/

  Future<List<CartDbModel>> getCartList() async {
    final db = await database;
    final response = await db.query(TABLE_CART);
    List<CartDbModel> list = response.isNotEmpty
        ? List<CartDbModel>.from(response.map((x) => CartDbModel.fromJson(x)))
        : [];
    return list;
  }

/*  updateUser(User user) async {
    final db = await database;
    var response = await db.update(TABLE_USER, user.toMap(),
        where: '$ID = ?', whereArgs: [user.id]);
    return response;
  }
*/

  Future clearCart() async {
    final db = await database;
    var response = await db.delete(TABLE_CART);
    //////////// Another Way ////////////
    //var response2 = await db.rawDelete("Delete * from $TABLE_USER");
    return response;
  }

  Future addToCart(CartDbModel cartDbModel) async {
    final db = await database;
    var raw = await db.insert(
      TABLE_CART,
      cartDbModel.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    //////////// Another Way ////////////
//    var raw2 = await db.rawInsert("INSERT Into $TABLE_USER ($NAME,$CITY)"
//        " VALUES (${user.name},${user.city})");

    return raw;
  }

  Future updateCartProductQty(
      {required int qty, required CartDbModel cartDbModel}) async {
    final db = await database;

    // var response = await db.rawUpdate(
    //       'UPDATE $TABLE_CART SET $QTY = ? WHERE $ID = ?',
    //       ["$qty", cartDbModel.id]);

    // OR
    var response = await db.update(TABLE_CART, {QTY: "$qty"},
        where: '$ID = ?', whereArgs: [cartDbModel.id]);

    // var response = await db.update(TABLE_CART, cartDbModel.toJson(),
    //     where: '$ID = ?',
    //     whereArgs: [cartDbModel.id]);

    print("TAG:: updateCartProductQty: response >>>>>>>>>> $response");
    return response;
  }

  Future getItem(int id) async {
    final db = await database;
    try {
      if (id != 0) {
        List<Map<String, dynamic>> response =
            await db.query(TABLE_CART, where: "id=?", whereArgs: [id]);

        print(response);
        if (response.length != 0) {
          return response[response.length - 1];
        } else {
          return {};
        }
      } else {
        return "id is zero";
      }
      // List<Map<String, dynamic>> response = await db.query(TABLE_CART);

    } catch (e) {
      print(e.toString());
      // throw Exception(e.toString());
    }
  }

  Future deleteItemFromCart(int? id) async {
    final db = await database;
    var response =
        await db.delete(TABLE_CART, where: '$ID = ?', whereArgs: [id]);
    return response;
  }
}

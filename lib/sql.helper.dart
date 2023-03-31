import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;
// import 'package:path/path.dart';
import 'package:sqflite/sqlite_api.dart';

class SQLhelper {
  
static Future<sql.Database> db() async {
    return sql.openDatabase('dbtech.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await creatTables(database);
    });
  }



static Future<void> creatTables(sql.Database database) async {
    await database.execute("""CREATE TABLE items(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      title TEXT,
      task TEXT,
      createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP

    )""");
  }



  static Future<int> createItem(String title, String? task) async {
    final db = await SQLhelper.db();
    final data = {"title": title, "task": task};
    final id = await db.insert("item", data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }


  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SQLhelper.db();
    return db.query("items", orderBy: "id");
  }

  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await SQLhelper.db();
    return db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
  }




  static Future<int> updateItem(int id, String title, String? task) async {
    final db = await SQLhelper.db();

    final data = {
      "title": title,
      "task": task
    };

    final result =
        await db.update("items", data, where: "id =?", whereArgs: [id]);
    return result;
  }





  static Future<void> deleteItem(int id) async {
    final db = await SQLhelper.db();
    try {
      await db.delete("items", where: "id =?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Somting went wrong when deleting an item: $err");
    }
  }
}
























































//   static Future<void> creatTables(sql.Database database) async {
//     await database.execute("""CREATE TABLE items(
//       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
//       title TEXT,
//       task TEXT,
//       createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP

//     )""");
//   }

//   static Future<sql.Database> db() async {
//     return sql.openDatabase('dbtech.db', version: 1,
//         onCreate: (sql.Database database, int version) async {
//       await creatTables(database);
//     });
//   }

//   static Future<int> createItem(String title, String? task) async {
//     final db = await SQLhelper.db();
//     final data = {"title": title, "task": task};
//     final id = await db.insert("item", data,
//         conflictAlgorithm: sql.ConflictAlgorithm.replace);
//     return id;
//   }

//   static Future<List<Map<String, dynamic>>> getItems() async {
//     final db = await SQLhelper.db();
//     return db.query("items", orderBy: "id");
//   }

//   static Future<List<Map<String, dynamic>>> getItem(int id) async {
//     final db = await SQLhelper.db();
//     return db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
//   }

//   static Future<int> updateItem(int id, String title, String? task) async {
//     final db = await SQLhelper.db();

//     final data = {
//       "title": title,
//       "task": task
//     };

//     final result =
//         await db.update("items", data, where: "id =?", whereArgs: [id]);
//     return result;
//   }

//   static Future<void> deleteItem(int id) async {
//     final db = await SQLhelper.db();
//     try {
//       await db.delete("items", where: "id =?", whereArgs: [id]);
//     } catch (err) {
//       debugPrint("Somting went wrong when deleting an item: $err");
//     }
//   }
// }
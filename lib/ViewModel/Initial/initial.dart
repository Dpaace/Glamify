import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../Model/GetX/Controller/duplicate_controller.dart';
import '../../Model/Tools/Entities/AddressEntity/address_entity.dart';
import '../../Model/Tools/Entities/OrderEntity/order_entity.dart';
import '../../Model/Tools/JsonParse/product_parse.dart';

class HighPriorityInitial {
  static Future<void> initial() async {
    Get.put(DuplicateController());
    await GetStorage.init();
    await Hive.initFlutter();
    Hive.registerAdapter(ProductEntityAdapter());
    Hive.registerAdapter(AddressEntityAdapter());
    Hive.registerAdapter(OrderEntityAdapter());
  }
}

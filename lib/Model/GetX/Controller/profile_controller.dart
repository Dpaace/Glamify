import 'package:get/get.dart';

import '../../../ViewModel/Profile/Authentication/authentication.dart';
import '../../../ViewModel/Profile/address.dart';
import '../../../ViewModel/Profile/order.dart';
import '../../../ViewModel/Profile/profile.dart';
import '../../Tools/Entities/entities.dart';

class ProfileController extends GetxController {
  ProfileFunctions profileFunctionsInstance = ProfileFunctions();
  ProfileFunctions get profileFunctions => profileFunctionsInstance;

  var rememberMeStatusInstance = false.obs;
  bool get rememberMeStatus => rememberMeStatusInstance.value;

  var informationInstance = UserInformation(
    name: "",
    userName: "",
    password: "",
  ).obs;
  UserInformation get information => informationInstance.value;

  AuthenticationFunctions authenticationFunctionsInstance =
      AuthenticationFunctions();
  AuthenticationFunctions get authenticationFunctions =>
      authenticationFunctionsInstance;

  var obscureTextInstance = true.obs;
  bool get obscureText => obscureTextInstance.value;

  var isLoginInstanse = false.obs;
  bool get islogin => isLoginInstanse.value;

  var userSetImageInstance = false.obs;
  bool get userSetImage => userSetImageInstance.value;

  final AddressFunctions addressFunctionsInstance = AddressFunctions();
  AddressFunctions get addressFunctions => addressFunctionsInstance;

  final OrderFunctions orderFunctionsInstance = OrderFunctions();
  OrderFunctions get orderFunctions => orderFunctionsInstance;
}

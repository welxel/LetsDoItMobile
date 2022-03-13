import 'package:LetsDoIt/models/login/login_response.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  var selectedRememberMe=false.obs;
  var loginResponse=LoginResponse(name: "", id: 0, surname: "", token: "").obs;

  changeRememberMeValue(){
    selectedRememberMe.value=!selectedRememberMe.value;
  }
}
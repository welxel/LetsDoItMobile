import 'package:LetsDoIt/models/login/login_response.dart';
import 'package:LetsDoIt/modules/home_page/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../network/api_handler.dart';

class LoginController extends GetxController{
  var selectedRememberMe=false.obs;
  var loginResponse=LoginResponse(status: 0,data: null,message: "").obs;

  changeRememberMeValue(){
    selectedRememberMe.value=!selectedRememberMe.value;
  }

  loginMessage(String email,String password) async{
    var response=await ApiHandler.apiPost(url: "https://localhost:44307/api/account/login", parameter: {
      "email":email,
      "password":password
    });
   this.loginResponse.value=LoginResponse.fromJson(response);
    if(loginResponse.value.status == 1){
       Get.to(HomePage());
    }
    else if(loginResponse.value.status == 0){
      Get.snackbar("Uyarı", loginResponse.value.message);
    }
  }
}
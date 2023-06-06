import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'Model/DeliveryLoginmodel.dart';
import 'Model/deliveryRegistermodel.dart';
import 'Model/deliveryacceptmodel.dart';
import 'Model/deliverydisplaymodel.dart';

var LURL = "https://health-buddy.onrender.com";
class LoginDApi{
  LoginDApi();
  Future<DeliveryLogin_Model> loginDList(phone,password) async{
    var url = LURL + "/api/courier_partner/login";
    http.Response response = await http.post(Uri.parse(url),
        // headers: {"content-type": "application/json"},
    body: jsonEncode({
    "mobile_num": phone,
    "password":password    
    }));
    var data = jsonDecode(response.body);
    print("SignIn" + response.body);
    return DeliveryLogin_Model.fromJson(data);
  }
}


class SigupDApi{
  SigupDApi();
  Future<DeliveryRegister_Model> signupdList(name,email,phone,dob,gender,city,password,photo) async{
    var url = LURL + "/api/courier_patner";
    http.Response response = await http.post(Uri.parse(url),
        headers: {"content-type": "application/json"},
    body: jsonEncode({
          "full_name": name,
            "emailid": email,
            "mobile": phone,
             "birth_date": dob,
            "gender": gender,
            "full_address": city,
            "password": password,
            "photo": photo,

    
    }));
    var data = jsonDecode(response.body);
    print("SignUp" + response.body);
    return DeliveryRegister_Model.fromJson(data);
  }
}

class deliverydisplayApi{
  
  deliverydisplayApi();
  Future<deliverydisplay_Model> deliverydisplayList() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
  var tokn =  pref.getString("token");
  
    var url = LURL + "/api/courier_partner/display";
    http.Response response = await http.get(Uri.parse(url),
        headers: {"content-type": "application/json","Authorization":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJtb2JpbGVfbnVtIjo3MjI3ODg5Nzk4LCJwYXNzd29yZCI6IjEyMzQxMjM0IiwiaWQiOiI2NDA1YWVmZWZhODY3OTI4YjRlM2UzMWMiLCJpYXQiOjE2NzgwOTQxMDUsImV4cCI6MTcwOTYzMDEwNX0.-td_8jjEZAGG7kmMWjezI_mTEapXMBQP0EzI_B3i5jw"},
    );
    Map<String,dynamic> mapResponse;
    var data= jsonDecode(response.body);
    print("User Display " + response.body);
    return deliverydisplay_Model.fromJson(data);
  }
}

class deliveryacceptApi{
  
  deliveryacceptApi();
  Future<deliveryaccept_Model> deliveryacceptList() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
  var tokn =  pref.getString("token");
  
    var url = LURL + "/api/appointment/accept_appointment_details_for_cp";
    http.Response response = await http.get(Uri.parse(url),
        headers: {"content-type": "application/json","Authorization":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJtb2JpbGVfbnVtIjo3MjI3ODg5Nzk4LCJwYXNzd29yZCI6IjEyMzQxMjM0IiwiaWQiOiI2NDA1YWVmZWZhODY3OTI4YjRlM2UzMWMiLCJpYXQiOjE2Nzg3ODM2NjUsImV4cCI6MTcxMDMxOTY2NX0.9Z-3zGAAbKq8CYPVc3OJyVy_02lZO8sDisD1B6PnQKM"},
    );
    Map<String,dynamic> mapResponse;
    var data= jsonDecode(response.body);
    print("Delivery accept " + response.body);
    return deliveryaccept_Model.fromJson(data);
  }
}
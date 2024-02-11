import 'dart:convert';

import 'package:blogapp/model/usermodel.dart';
import 'package:http/http.dart' as http;
class UserApiService{
  Future<List<User>> sendData(
      String name,
      String age,
      String mobileNo,
      String address,
      String pincode,
      String eMail,
      String password,
      ) async{
    var client=http.Client();
    var ApiUrl=Uri.parse("http://192.168.1.4:3001/api/blog/signup");
    var response = await client.post(ApiUrl,
        headers: <String,String>{
          "Content-Type" : "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        {
          "name": name,
          "age": age,
          "mobileNo": mobileNo,
          "address": address,
          "pincode": pincode,
          "eMail": eMail,
          "password": password,
        }
        )
    );
    if(response.statusCode==200)
    {
      return json.decode(response.body);
    }
    else
    {
      throw Exception("Failed to send data");
    }
  }

}

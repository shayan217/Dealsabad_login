import 'dart:convert';
import 'package:dealsabaad/Screens/Navigation/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// class ApiController {
//   static const String apiUrl = 'https://backend.dealsabaad.com/member/login-app';
//   static Future<void> loginUser(BuildContext context, String contactNo, String password) async {
//     var headers = {
//       'Content-Type': 'application/json',
//     };
//     var requestBody = json.encode({
//       "password": password,
//       "contactno": contactNo,
//     });
//     try {
//       http.Response response = await http.post(Uri.parse(apiUrl), headers: headers, body: requestBody);
//       if (response.statusCode == 201) {
//         print('Login successful');
//         print(response.body);
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => Navigation()),
//         );
//       } else {
//         print('Failed to login: ${response.reasonPhrase}');
//       }
//     } catch (e) {
//       print('Exception occurred: $e');
//     }
//   }
// }

class ApiController {
  static const String apiUrl = 'https://backend.dealsabaad.com/member/login-app';
  static Future<void> loginUser(BuildContext context, String contactNo, String password) async {
    var headers = {
      'Content-Type': 'application/json',
    };
    var requestBody = json.encode({
      "password": password,
      "contactno": contactNo,
    });
    try {
      http.Response response = await http.post(Uri.parse(apiUrl), headers: headers, body: requestBody);
      if (response.statusCode == 201) {
        print('Login successful');
        print(response.body);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Navigation()),
        );
      } else {
        print('Failed to login: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Exception occurred: $e');
    }
  }
}











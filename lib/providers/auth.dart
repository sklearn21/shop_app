import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../providers/http_requests.dart';

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  Future<void> _authenticate(
      String email, String password, String authUrl) async {
    final response = await http.post(
      authUrl,
      body: json.encode(
        {
          'email': email,
          'password': password,
          'returnSecureToken': true,
        },
      ),
    );
    print(jsonDecode(response.body));
  }

  Future<void> signup(String email, String password) async {
    return _authenticate(email, password, authSignupUrl);
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, authLoginUrl);
  }
}

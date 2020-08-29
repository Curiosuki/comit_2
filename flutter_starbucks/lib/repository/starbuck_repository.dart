import 'dart:convert';

import 'package:flutter_starbucks/models/coffee.dart';
import 'package:flutter_starbucks/models/supplier.dart';
import 'package:http/http.dart' as http;


class StarbucksRepository {

  /// 음료 리스트
  Future<List<Coffee>> queryProduct() async {

    final List<Coffee> items = [];

    // Future , async 비동기
    final url = 'http://54.180.153.12:8000/product/';
    final response = await http.get(url);                 // 서버에 요청하기

    final jsonObj = json.decode(response.body);
    jsonObj.forEach((e) {
      Coffee coffee = Coffee.fromJson(e);
      items.add(coffee);
    });

    return items;


  }


  /// 매장 리스트
  Future<List<Supplier>> queryStore() async {

    final List<Supplier> items = [];

    // Future , async 비동기
    final url = 'http://54.180.153.12:8000/product/';
    final response = await http.get(url);                 // 서버에 요청하기

    final jsonObj = json.decode(response.body);
    jsonObj.forEach((e) {
      Supplier coffee = Supplier.fromJson(e);
      items.add(coffee);
    });

    return items;


  }


  /// 회원가입
  Future<String> signUp(
      String username,
      String nickname,
      String name,
      String phone,
      String password1,
      String password2,) async {

    final url = 'http://54.180.153.12:8000/rest-auth/registration/';
    final response = await http.post(url, body: {
      'username': username,
      'name': name,
      'phone': phone,
      'password1': password1,
      'password2': password2,
    });                 // 서버에 요청하기

    final jsonObj = json.decode(response.body);

    return jsonObj['key'];


  }

  /// 로그인
  Future<String> loginUp(
      String username,
      String password1,
      String password2,) async {

    final url = 'http://54.180.153.12:8000/rest-auth/registration/';
    final response = await http.post(url, body: {
      'username': username,
      'password1': password1,
      'password2': password2,
    });                 // 서버에 요청하기

    final jsonObj = json.decode(response.body);

    return jsonObj['key'];


  }

  /// 주문하기
  Future<String> order(
      String branch_id,
      String takeout_option,

      String password2,) async {

    final url = 'http://54.180.153.12:8000/rest-auth/registration/';
    final response = await http.post(url, body: {
      'username': username,
      'name': name,
      'phone': phone,
      'password1': password1,
      'password2': password2,
    });                 // 서버에 요청하기

    final jsonObj = json.decode(response.body);

    return jsonObj['key'];


  }

}


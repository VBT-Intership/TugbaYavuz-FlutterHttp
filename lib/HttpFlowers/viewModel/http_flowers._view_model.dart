import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutterhttp/HttpFlowers/model/http_flower_model.dart';
import '../view/http_flowers.dart';
import 'package:http/http.dart' as http;

abstract class HttpFlowersViewModel extends State<HttpFlowers> {
  final baseUrl = "https://flowershttp.firebaseio.com/";

  bool isLoading = false;

  List<HttpFlowerModel> httpflowers = [];

  @override
  void initState() {
    super.initState();
    callItems();
  }

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  Future<void> callItems() async {
    changeLoading();
    await getHttpFlowers();
    changeLoading();
  }

  Future<void> getHttpFlowers() async {
    final response = await http.get("$baseUrl/flowers.json");

    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonBody = jsonDecode(response.body);
        if (jsonBody is List)
          httpflowers =
              jsonBody.map((e) => HttpFlowerModel.fromJson(e)).toList();

        break;
      default:
    }
  }
}

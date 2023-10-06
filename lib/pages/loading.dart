import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // make the request
    var url = Uri.parse("http://worldtimeapi.org/api/timezone/Europe/London");
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    print(data);

    // get property from data
    String datetime = data['datetime'];
    print(datetime);

    String offset = data['offset'];
    // print(datetime);
    //print(offset);

    // create DateTime object
    // DateTime now = DateTime.parse(datetime);
    // print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
    print('hey there!');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}

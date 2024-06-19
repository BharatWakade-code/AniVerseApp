import 'dart:convert';

import 'package:aniverse/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final String apiUrl = Constants.Endpoint + Constants.GetAllCharacters;
  String result = ''; // To store the result from the API call

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _postData() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      // final response = await http.post(
      //   Uri.parse(apiUrl),
      //   headers: <String, String>{
      //     'Content-Type': 'application/json; charset=UTF-8',
      //   },
      //   body: jsonEncode(<String, dynamic>{'offset': 0}),
      // );

      if (response.statusCode == 200) {
        // Successful POST request, handle the response here
        final responseData = jsonDecode(response.body);
        if (responseData is Map<String, dynamic> &&
            responseData['characters'] is List) {
          List countries = responseData['characters'];
          setState(() {
            result = countries
                .map((country) => 'Name: ${country['debut']['manga']}')
                .join('\n');
          });
        } else {
          throw Exception('Invalid response format');
        }
      } else {
        // If the server returns an error response, throw an exception
        throw Exception('Failed to post data');
      }
    } catch (e) {
      setState(() {
        result = 'Error: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Loading',
                style: TextStyle(fontSize: 15, color: Colors.redAccent),
              ),
              IconButton(
                onPressed: () {
                  _postData();
                  // FirebaseAuth.instance.signOut();
                },
                icon: const Icon(
                  Icons.refresh_outlined,
                  size: 30,
                ),
              ),
            ],
          ),
          Text(
            result,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Detailpage extends StatefulWidget {
  final Map<String, dynamic> book;
  const Detailpage({super.key, required this.book});
  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> books = widget.book;
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        title: Text('Book Details',style: TextStyle(color:  Colors.brown.shade500),),
        backgroundColor: Colors.brown.shade50,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                
                child: Image.network(books['image_url'], fit: BoxFit.contain),
              ),

              SizedBox(height: 10),
              Text(
                books['title'],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 5),
              Text(books['author_name'], style: TextStyle(fontSize: 17)),

              SizedBox(height: 15),
              Row(
                children: [
                 
               
                  Text(
                    '₹${books['price'].toString()}',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ), Spacer(),
                  Icon(Icons.star, color: Colors.orange),
                  SizedBox(width: 5),
                  Text(books['rating'].toString()),
                ],
              ),

              SizedBox(height: 25),
              Divider(),
              Text(
                'Book Information',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              detailRow('Genre', books['genre']),
              detailRow('Language', books['language']),
              detailRow('Pages', books['pages'].toString()),
              detailRow('Publisher', books['publisher']),
              detailRow('Published Year', books['published_year'].toString()),

              SizedBox(height: 25),
              Divider(),
              Text(
                'About This Book',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),
              Text(
                books['description'],
                style: TextStyle(fontSize: 15, height: 1.6),
              ),

              SizedBox(height: 25),
              Text(
                'Read the Book',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  books['content'],
                  style: TextStyle(fontSize: 15, height: 1.8),
                ),
              ),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget detailRow(String title, dynamic value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          SizedBox(
            width: 125,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
          ),
          Expanded(child: Text(value ?? 'Not available')),
        ],
      ),
    );
  }
}

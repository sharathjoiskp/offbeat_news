import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text(
          "Content",
          style: TextStyle(color: Colors.black54),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomItems(
                label: 'Fertility',
                imageUrl: 'images/fertility.jpeg',
              ),
              SizedBox(
                height: 25,
              ),
              CustomItems(
                label: 'Sex',
                imageUrl: 'images/sex.jpeg',
              ),
              SizedBox(
                height: 25,
              ),
              CustomItems(
                label: 'Menstruation',
                imageUrl: 'images/menstruation.jpeg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomItems extends StatelessWidget {
  CustomItems({
    required this.label,
    required this.imageUrl,
    super.key,
  });
  String label;
  String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width / 1.1,
          ),
          height: 200,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 15),
              child: Text(
                label,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_pj/components/mybotton.dart';
import 'package:login_pj/components/text-field.dart';
import 'package:login_pj/models/tshirts.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Home Page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 48,
            ),
            Container(
                child: TextFfield(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(20.0), // Radius for all borders
                ),
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Good Morning",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Icon(
                  Icons.abc,
                  size: 200,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Divider(),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Dangerous Clothings for sales",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: MyButton(
                ontap: () => Navigator.pushNamed(context, '/shop_page'),
                child: const Icon(
                  Icons.arrow_forward,
                ),
              ),
            )
          ],
        )));
  }
}

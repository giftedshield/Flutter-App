import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset('assets/Tokai_Teio.jpg'),
            ),
            SizedBox(height: 20),

            Container(
              width: 250,
              padding: EdgeInsets.all(12),
              child: Text('francis gamaliel wauran / 17', style: TextStyle(fontSize: 16)),
            ),

            SizedBox(height: 12),

            Container(
              width: 250,
              padding: EdgeInsets.all(12),
              child: Text('11 pplg 2', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}

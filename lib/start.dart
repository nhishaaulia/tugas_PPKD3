import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Saya"),
        backgroundColor: const Color.fromARGB(255, 241, 154, 227),
        actions: [Icon(Icons.favorite), Icon(Icons.message)],
        centerTitle: true,
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            // Nama Lengkap
            children: [
              Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Nama :", style: TextStyle(fontSize: 20, color: Colors.pink)),
                  SizedBox(width: 90),
                  Text("Nhisha Aulia",
                  style: TextStyle(fontSize: 20, color: Colors.pink),),]
              ),
              

            // Kota tempat tinggal
              Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, color:Colors.pink), Text(":", style: TextStyle(color: Colors.pink),),
                  SizedBox(width: 120),
                  Text('Jakarta', style: TextStyle(fontSize: 20, color: Colors.pinkAccent),),],
             ),


            // Deskripsi singkat
              Text(
                'Seorang pelajar yang sedang belajar Flutter.',
                style: TextStyle(fontSize: 17, color: Colors.pinkAccent), // font kecil
          
              ),
            ],
         ),
      );
    }
}
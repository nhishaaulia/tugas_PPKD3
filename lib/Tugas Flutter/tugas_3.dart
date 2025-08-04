import 'package:flutter/material.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formulir"), 
      backgroundColor: const Color.fromARGB(255, 248, 155, 189),
      centerTitle: true,),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(   
              children: [
                // Formulir Pengguna
                ]),
                TextField(
                  decoration: InputDecoration(
                  labelText: "Nama Lengkap",
                  hintText: "Masukkan Nama Anda",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder())), SizedBox(
                  height: 15),
  
            Row(
              children: [
                ]),
                TextField(
                  decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Masukkan Email Anda",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder())), SizedBox(
                  height: 15),
            Row(
              children: [
                ]),
                TextField(
                  decoration: InputDecoration(
                  labelText: "No. HP",
                  hintText: "Masukkan No Handphone Anda",
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder())), SizedBox(
                  height: 15),
            Row(
              children: [
                ]),
                TextField(
                  decoration: InputDecoration(
                  labelText: "Deskripsi",
                  hintText: "Masukkan Deskripsi Anda",
                  prefixIcon: Icon(Icons.house),
                  border: OutlineInputBorder())), SizedBox(
                  height: 15),
            
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              
              children: [
                //Stack 1
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 181, 255)),
                    ),
                    Text("Pink",style: TextStyle( fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                   
                 //Stack 2  
                 Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 130, 205, 255)),
                    ),
                    Text("Biru",style: TextStyle( fontSize: 20, color: Colors.white),
                    ),
                  ],
                 ),

                //Stack 3  
                 Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 186, 255, 140)),
                    ),
                    Text("Hijau",style: TextStyle( fontSize: 20, color: Colors.white),
                    ),
                  ],
                 ),

                //Stack 4  
                 Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 207, 119)),
                    ),
                    Text("Orange",style: TextStyle( fontSize: 20, color: Colors.white),
                    ),
                  ],
                 ),

                //Stack 5 
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 155, 153, 255)),
                    ),
                    Text("Ungu",style: TextStyle( fontSize: 20, color: Colors.white),
                    ),
                  ],
                 ),

                //Stack 6
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 158, 158)),
                    ), 
                    Text("Merah",style: TextStyle( fontSize: 20, color: Colors.white),
                    ),
                  ],
                 ),
             ],
            ),
          ],
        ),
      ),
    );
  }
}
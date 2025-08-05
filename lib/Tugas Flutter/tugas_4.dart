import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Formulir"), 
      backgroundColor: const Color.fromARGB(255, 255, 175, 202),
      centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
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
                    prefixIcon: Icon(Icons.menu),
                    border: OutlineInputBorder())), SizedBox(
                    height: 15),
              
               Row( 
                children: [
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListTile(
                        title: Text("Rumah"),
                        tileColor: const Color.fromARGB(255, 253, 210, 244),
                        subtitle: Text("980.000.000"),
                        leading: Icon(Icons.house, color: const Color.fromARGB(255, 163, 106, 125)),
                        onTap: () {
                        },
                      ),
                    ),
                
               Row(
                children: [
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListTile(
                      title: Text("Mobil"),
                      tileColor: const Color.fromARGB(255, 248, 221, 244),
                      subtitle: Text("850.000.000"),
                      leading: Icon(Icons.directions_car, color: const Color.fromARGB(255, 151, 201, 105)),
                      onTap: () {
                      },
                    ),
                  ),
        
              Row(
                children: [
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListTile(
                      title: Text("Motor"),
                      tileColor: const Color.fromARGB(255, 253, 210, 244),
                      subtitle: Text("30.000.000"),
                      leading: Icon(Icons.motorcycle, color: const Color.fromARGB(255, 102, 141, 212)),
                      onTap: () {
                      },
                    ),
                  ),
        
              Row(
                children: [
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListTile(
                      title: Text("Pesawat"),
                      tileColor: const Color.fromARGB(255, 248, 221, 244),
                      subtitle: Text("1.000.000.000"),
                      leading: Icon(Icons.airplanemode_active, color: const Color.fromARGB(255, 224, 160, 108)),
                      onTap: () {
                      },
                    ),
                  ),
        
              Row(
                children: [
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListTile(
                      title: Text("Truk"),
                      tileColor: const Color.fromARGB(255, 253, 210, 244),
                      subtitle: Text("900.000.000"),
                      leading: Icon(Icons.fire_truck, color: const Color.fromARGB(255, 129, 108, 224)),
                      onTap: () {
                      },
                    ),
                  ),
        
              Row(
                children: [
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListTile(
                      title: Text("Kereta"),
                      tileColor: const Color.fromARGB(255, 248, 221, 244),
                      subtitle: Text("900.000.000.000"),
                      leading: Icon(Icons.train, color: const Color.fromARGB(255, 212, 103, 103)),
                      onTap: () {
                      },
                    ),
                  ),

              Row(
                children: [
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListTile(
                      title: Text("Sepeda"),
                      tileColor: const Color.fromARGB(255, 253, 210, 244),
                      subtitle: Text("15.000.000"),
                      leading: Icon(Icons.directions_bike, color: const Color.fromARGB(255, 205, 212, 107)),
                      onTap: () {
                      },
                    ),
                  ),
                ],
             ),
           ),
        );
      } 
    }
import 'package:flutter/material.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2 ({super.key});

 final String  description = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Lengkap"),
        backgroundColor: const Color.fromARGB(255, 255, 202, 221),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Nama Lengkap
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle, size:50),
                  SizedBox(width: 8),
                  Text("Nhisha Aulia",style: TextStyle( fontSize: 24,fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
        
        
            //Email
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal:20),
              child: Container(
                padding:EdgeInsets.all(12),
                decoration:BoxDecoration(
                  color: const Color.fromARGB(255, 236, 137, 174),
                    border:Border.all(color: const Color.fromARGB(255, 78, 100, 110), width:3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(width:15),
                    Icon(Icons.email, color: Colors.black),
                    SizedBox(width:15),
                    Text("nhishaauliappkdjp@gmail.com", style: TextStyle(fontSize: 18, color: Colors.black,),
                  )],
                )
              )
            ),
        
            // Nomor HP dengan Spacer (rata kanan)
             Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal:20),
              child: Container(
                padding:EdgeInsets.all(12),
                decoration:BoxDecoration(
                  color: const Color.fromARGB(255, 236, 137, 174),
                    border:Border.all(color: const Color.fromARGB(255, 78, 100, 110), width:3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                children: [
                    SizedBox(width:15),
                    Icon(Icons.phone, color: Colors.black),
                    SizedBox(width:15),
                    Text("0812-3456-7890",style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0),)
                  )],
                )
              )
            ),
        
            // Dua kotak sejajar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      height: 55,
                      alignment: Alignment.center,
                      width:200,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 155, 185, 211),
                      border: Border.all(color: const Color.fromARGB(255, 78, 100, 110), width: 3),
                      borderRadius: BorderRadius.circular(12),),
                      child: Text("Postingan", style: TextStyle(fontSize: 15, color: Colors.black,)),
                      ),
                  ),
        
        
                  SizedBox(width: 14),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      height: 55,
                      alignment: Alignment.center,
                      width:20,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 151, 137, 192),
                      border: Border.all(color: const Color.fromARGB(255, 78, 100, 110), width: 3),
                      borderRadius: BorderRadius.circular(12),),
                      child: Text("Followers", style: TextStyle(fontSize: 15, color: Colors.black,)),
                      ),
                  ),
                ],
              ),
            ),
        
            // Deskripsi
            const SizedBox(height: 16),
            Center(
              child: Text(
                "Deskripsi Profil",
                style: TextStyle(fontSize: 16),
              ),
            ),
        
            // Hiasan visual bawah
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                
                // color: Colors.purple[100],
                decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.purple
                    
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    description, 
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2 ({super.key});

 final String  description = 'Hiii! Nama saya Nhisha Aulia ^^\n\Lulusan Sistem Informasi dari Universitas Bakrie. Saya aktif dalam organisasi dan berbagai proyek selama kuliah yang mengasah kemampuan komunikasi, manajemen waktu, dan kerja tim. Saya seorang individu yang berdedikasi, teliti, dan memiliki semangat belajar tinggi. Memiliki pengalaman dalam teknologi informasi dan mampu bekerja secara mandiri maupun dalam tim. Terbiasa menghadapi tantangan baru dengan pendekatan yang solutif dan komunikatif. Siap belajar dan berkontribusi secara maksimal di dunia profesional.';
 
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
           [
            //Nama Lengkap
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                  ), 
                  SizedBox(height: 8),
                  Text("Nhisha Aulia",style: TextStyle( fontSize: 30,fontWeight: FontWeight.bold,
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
                  borderRadius: BorderRadius.circular(15),
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
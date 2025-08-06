import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  bool showName = true;
  bool liked   = true;
  bool lihatselengkapnya = true;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Interaction Page - Tugas 5 Flutter"),
      backgroundColor: Color.fromARGB(221, 255, 206, 231),
      centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(221, 212, 232, 255),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 18,),
              ElevatedButton(style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 255, 209, 224)),
              ), 
                onPressed: () {
                  setState(() {
                    showName = !showName;
                  });
                },

                child: Text("Tampilkan Nama", style: TextStyle(fontSize: 15,),),
              ),
              if (showName) Text("Nhisha Aulia", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 201, 118, 164)),),
          
              SizedBox(height: 10),
          
              IconButton(
                onPressed: () {
                  setState(() {
                    liked = !liked;  
                  });
                },
                icon: Icon(Icons.favorite),
                color: liked ? const Color.fromARGB(255, 253, 87, 142) : const Color.fromARGB(255, 253, 177, 202),
              ),
            
              Container(
                child: TextButton(
                  onPressed: () {
                  setState(() {
                    lihatselengkapnya = !lihatselengkapnya;
                  });
                
                },
                child: Text("Lihat Selengkapnya", style: TextStyle(fontSize: 18,),),
                ),
                
              ),
              
              SizedBox(height: 10,),
             if (lihatselengkapnya)
              Text(
                "Flutter adalah framework open-source dari Google yang digunakan untuk membangun aplikasi mobile, web, dan desktop dari satu basis kode (codebase) menggunakan bahasa pemrograman Dart. Flutter memungkinkan developer membuat antarmuka pengguna (UI) yang cepat, responsif, dan menarik secara visual.", style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 201, 118, 164)),),
                SizedBox(height: 30,),
                Text(" $counter", style: TextStyle(fontSize: (40), color: const Color.fromARGB(255, 109, 80, 150)),),
                
                SizedBox(height: 40),
                InkWell(
                  onTap: (){
                    print("hiii, aku inkwell");
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 600,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromARGB(255, 255, 214, 228)),
                      ), 
                      Text("Tekan di sini",style: TextStyle( fontSize: 20, color: const Color.fromARGB(255, 109, 80, 150))),
                    ],
                  ),  
                ),
              
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  print("Ditekan sekali");
                },
                onDoubleTap: () {
                  print("Ditekan dua kali");
                },
                onLongPress: () {
                  print("Tahan lama");
                },
                child: Container(
                  height: 55,
                  width: 200,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 255, 214, 228)),
                  alignment: Alignment.center,
                  padding:EdgeInsets.all(15),
                  child: Text("Tekan aku",style: TextStyle( fontSize: 20, color: const Color.fromARGB(255, 109, 80, 150))),
                ),
            )
          ],  
        ),    
      ),
          
        ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          counter++; 
        }
        );
      },
      child: Icon(Icons.add)
      ), 
      );
  }
    
  }
          
                 
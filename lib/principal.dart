import 'package:evenflow/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: 
      PreferredSize(preferredSize: Size.fromHeight(120), 
      
        child: Container(
          padding: EdgeInsets.only(top: 36, bottom: 12, right: 24, left: 24), 
          color: Color.fromARGB(255, 195, 74, 70),
          child: Column(
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   GestureDetector(
                   onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage())), 
                   child: Text('EvenFlow', style: GoogleFonts.nunitoSans(fontSize: 20, fontWeight: FontWeight.bold))),              
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Icon(Icons.menu, color: Colors.white,),
                      ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Icon(Icons.person, color: Colors.white,),
                          ),
                    ],
                  ),
                  ],
              ),
              SizedBox(height: 10),
              Container(
                child:  TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Buscar artistas e eventos ',
                    suffixIcon: const Icon(
                      Icons.search
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    hintStyle:const TextStyle(color: Color.fromARGB(255, 133, 129, 129)),                                    
                  ),        
                ),              
              ),
            ],
          ),
        )
        ,),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.black),       
                  width: double.infinity,          
                  child: Image.asset('assets/Knotfest_little.png', height: 300),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text('KNOTFEST', style: GoogleFonts.nunitoSans(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                      Text('19/10/2024 - 20/10/2024', style: GoogleFonts.nunitoSans(fontSize: 12, fontWeight: FontWeight.normal,)),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Ingressos:', style: GoogleFonts.nunitoSans(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ],
              
            ),

            Column(

              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  width: 300,
                  height: 77,
                  decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("19 DE OUTUBRO 2024"),
                          Text('SÃO PAULO')
                        ],
                      ),
                      Column(
                        children: [
                          Text("A partir de:"),
                          Text('R\$245,00')
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16),

                Container(
                  padding: EdgeInsets.all(16),
                  width: 300,
                  height: 77,
                  decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("20 DE OUTUBRO 2024"),
                          Text('SÃO PAULO')
                        ],
                      ),
                      Column(
                        children: [
                          Text("A partir de:"),
                          Text('R\$245,00')
                        ],
                      )
                    ],
                  ),
                ),
            
              ],
            )
          ],
        ),
    );
  }
}
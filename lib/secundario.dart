import 'package:evenflow/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Secundario extends StatefulWidget {
  const Secundario({super.key});

  @override
  State<Secundario> createState() => _SecundarioState();
}

class _SecundarioState extends State<Secundario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: Image.asset('assets/ashnikko.png', height: 300),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text('ASHNIKKO', style: GoogleFonts.nunitoSans(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                      Text('09/05/2024 - 10/05/2024', style: GoogleFonts.nunitoSans(fontSize: 12, fontWeight: FontWeight.normal,)),
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
                          Text("9 DE MAIO 2024"),
                          Text('SÃO PAULO')
                        ],
                      ),
                      Column(
                        children: [
                          Text("A partir de:"),
                          Text('R\$120,00')
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
                          Text("10 DE MAIO 2024"),
                          Text('RIO DE JANEIRO')
                        ],
                      ),
                      Column(
                        children: [
                          Text("A partir de:"),
                          Text('R\$120,00')
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
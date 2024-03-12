import 'package:evenflow/principal.dart';
import 'package:evenflow/secundario.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Principal())),
                  child: Container(
                    child: Image.asset('assets/knotfest-imagem.png'),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/menos18.png', width: 20, height: 20),
                          Text('festival, show, rock', style: GoogleFonts.nunitoSans(fontSize: 11, fontWeight: FontWeight.normal))
                        ],
                      ),
                      Text('Evento destaque',  style: GoogleFonts.nunitoSans(fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:20, vertical: 16),
              child: Column(
                children: [
                  Text('Shows e concertos', style: GoogleFonts.nunitoSans(fontSize: 14, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(
              
             width: double.infinity,
             height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                         onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Secundario())),
                          child: Container(
                            width: 128,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage('assets/ashnikko.png'))
                            )),
                        ),
                          SizedBox(height: 8),
                        Text('ASHNIKKO'),
                        Text('Estreia 05/10/2024', style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey) )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 128,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('assets/Sepultura.jpg'))
                          )),
                          SizedBox(height: 8),
                        SizedBox(width: 128, child: Text('Sepultura - Última Turnê', overflow: TextOverflow.ellipsis, )),
                        Text('Estreia 08/09/2024', style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey) )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 128,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('assets/ivete.jpg'))
                          )),
                          SizedBox(height: 8),
                        Text('IVETE A FESTA'),
                        Text('Em breve', style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey) )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 128,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('assets/ludmilla.png'))
                          )),
                          SizedBox(height: 8),
                        Text('Ludmilla'),
                        Text('Estreia 25/05/2024', style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey) )
                      ],
                    ),
                  ),
        
                ],
              ),
              
              
            ),
        
            Padding(
              padding: EdgeInsets.symmetric(horizontal:20, vertical: 16),
              child: Column(
                children: [
                  Text('Festivais e eventos', style: GoogleFonts.nunitoSans(fontSize: 14, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(
              
             width: double.infinity,
             height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 128,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('assets/Knotfest_little.png'))
                          )),
                          SizedBox(height: 8),
                        Text('KNOTFEST'),
                        Text('Estreia 20/10/2024', style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey) )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 128,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('assets/ratos de porao.png'))
                          )),
                          SizedBox(height: 8),
                        Text('CIRCO VOADOR'),
                        Text('Estreia 23/10/2024', style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey) )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 128,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('assets/i wanna be.jpg'))
                          )),
                          SizedBox(height: 8),
                        Text('I WANNA BE'),
                        Text('Estreia 03/03/2024', style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey) )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 128,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('assets/queremosfestival.jpg'))
                          )),
                          SizedBox(height: 8),
                        Text('QUEREMOS! FESTIVAL'),
                        Text('Estreia 13/04/2023', style: GoogleFonts.nunitoSans(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey) )
                      ],
                    ),
                  ),
        
                ],
              ),
              
              
            )
          ],
          
        ),
      ]),
    );
  }
}
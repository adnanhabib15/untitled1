import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> applesList = ['Apple1','Apple2','Random Text', 'Lorel Ipsum','Apple1','Apple2','Random Text', 'Lorel Ipsum', 'Apple1','Apple2','Random Text', 'Lorel Ipsum', ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listvie Builder'),),
      body: ListView.builder(
        itemCount: applesList.length,
      itemBuilder: (context, i){
         return Padding(padding: EdgeInsets.all(15),
           child: Container(
             color: Colors.blue,
             child: Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Column(

                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       Image.asset('imag/image.png',height: 30,width: 25,),
                       SizedBox(width: 20),
                       Text(applesList[i],style: TextStyle(fontSize: 20),),
                     ],
                   ),
                   Text('23\$',style:TextStyle(fontSize: 20),),
                 ],

               ),
             ),
           ),

         );




      }

      ),
    );
  }
}



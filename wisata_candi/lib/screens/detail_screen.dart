import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key,required this.candi});

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          //DetailHeader
          Stack(
            children: [
              //Image Utama
              Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(candi.imageAsset,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover),
                ),
              ),
              //Tombol Back Custom
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent[100]?.withOpacity(0.8),
                  shape: BoxShape.circle),
                  //BocDecoration
                  child: IconButton(onPressed: () {},icon: const Icon(Icons.arrow_back)),
              ),
              )
            ],
          )
        //DetailInfo
        padding:const EdgeInsets.symmetric(horizontal:16),
        child:Column(
          crossAxisAligment:crossAxisAligment.start,
          children[
            SizedBox(height:16,),
            //Nama Candi & Tombol Favorit
            Row(
              mainAxisAligment:mainAxisAligment.spaceBetween,
              children:[
                Text(candi.name,style:textStyle(
                  fontSize:20,fontWeight:fontWeight.bold,
                ),
              ),
                IconButton(onPressed:(){},icon:Icon(Icons.favorite_border),
                )
              ],
            ),
            //Lokasi, Dibangun, Tipe
            SizedBox(height:16),
            Row(children:[
              Icon(Icons.place,color:Colors.red,),
              SizedBox(width:8,),
              SizedBox(width:70,
                child:Text('Lokasi',style:TextStyle(
                    fontWeight:FontWeight.bold),),),
                    Text(': ${candi.location}'),
            ],),
            Row(children:[
               Icon(Icons.calendar_month,color:Colors.red,),
              SizedBox(width:8,),
              SizedBox(width:70,
                child:Text('Dibangun',style:TextStyle(
                    fontWeight:FontWeight.bold),),),
                    Text(': ${candi.built}'),
            ],),
            Row(children:[
              Icon(Icons.house,color:Colors.red,),
              SizedBox(width:8,),
              SizedBox(width:70,
                child:Text('Tipe',style:TextStyle(
                    fontWeight:FontWeight.bold),),),
                    Text(': ${candi.type}'),
            ],),
            SizedBox(height:16,),
            Divider(color:Colors.deepPurple.shade100,),
            SizedBox(height:16,),
          ]
        )
        ],
      ),
    );
  }
}

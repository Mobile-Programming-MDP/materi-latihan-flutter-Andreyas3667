import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key,required this.candi});

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
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
                  child: IconButton(onPressed: () {},icon: const Icon(Icons.arrow_back)),
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}

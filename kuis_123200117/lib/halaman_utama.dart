import 'package:flutter/material.dart';
import 'disease_data.dart';
import 'package:kuis_123200117/detail_disease.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Disease', textAlign: TextAlign.center,),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: listDisease.length,
        itemBuilder: (context, index){
          final Diseases disease = listDisease[index];
          return InkWell(
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => detailDisease(disease: disease,),)
              );
            },
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: 5 / 3,
                    child: Image.network(
                        disease.imgUrls,
                        fit: BoxFit.cover,
                    )
                  ),const SizedBox(width: 4, height: 4,),
                  Text(disease.name,),
                ],
              ),
           ),
          );
        },
      ),
    );
  }
}

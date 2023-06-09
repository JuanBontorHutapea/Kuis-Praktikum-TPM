import 'package:flutter/material.dart';
import 'package:kuis_123200117/disease_data.dart';

class DetailPage extends StatelessWidget {
  final Diseases disease;
  const DetailPage({Key? key, required this.disease}) : super(key: key);

  get toggleFavorite => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(disease.plantName),
        actions: <Widget>[
          Icon(Icons.search),
        ],
      ),
      body: ListView(
        children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 2/5,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Center(
                  // aspectRatio: 5 / 3,
                  child: Image.network(
                    disease.imgUrls,
                    fit: BoxFit.cover,
                  )
                ),
              ],
            ),
          ),
          const SizedBox(height: 0),
          Center(
              child: Text(
                  'Name : '+ disease.name,style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                textAlign: TextAlign.center,
              )
          ),SizedBox(height: 10),
          Center(
              child: Text('ID : '+disease.id)
          ),SizedBox(height: 10),
          Center(
              child: Text('PlantName : '+disease.plantName)
          ),SizedBox(height: 10),
          Center(
              child: Text('Ciri-ciri:')
          ),
          Container(
            child: Column(
              children: List<Widget>.generate(
                  disease.nutshell.length,
                      (index) => Text(
                        disease.nutshell[index],
                        textAlign: TextAlign.center,
                      )
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
              child: Text('Symptom : '+disease.symptom, textAlign: TextAlign.center,)
          ),SizedBox(height: 0),
        ],
      ),
    );
  }
}


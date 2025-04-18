import 'package:flutter/material.dart';
import 'package:ghibli_explorer/data/datasources/remote/ghibli_api_service.dart';
import 'package:ghibli_explorer/data/models/people.dart';
import 'package:ghibli_explorer/core/constants/constants.dart';
import 'package:ghibli_explorer/core/widgets/people_card.dart';
class CharactersPage extends StatefulWidget{
  const CharactersPage({super.key});
  @override
  CharactersPageState createState() => CharactersPageState();

}

class CharactersPageState extends State<CharactersPage>{
  final GhibliApiService ghibliApiService = GhibliApiService();
  late Future<List<People>> people;
  @override
  void initState(){
    super.initState();
    people = ghibliApiService.getCharacters();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text(Constants.charactersTitle,style:StyleConstants.appBarTitle),
        backgroundColor: const Color.fromRGBO(199, 158, 81, 1),
      ),
      body:Container(
        decoration:const BoxDecoration(
          image:DecorationImage(
            image:AssetImage('assets/images/ghibli.jpg'),
            fit:BoxFit.cover,
          ),
        ),
      child:FutureBuilder<List<People>>(
        future:people,
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(color:Colors.amber)
            );
          }
          if(snapshot.hasError){
            return Center(
              child:Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.white),
              ),
            );
          }
          if(snapshot.hasData){
            List<People> peopleList = snapshot.data!;
            return ListView.builder(
              padding:const EdgeInsets.all(10),
              itemCount: peopleList.length,
              itemBuilder: (context, index){
                return PeopleCard(people: peopleList[index]);
              }
            );
          }
          return const Center(
            child:Text(
              'No data available',
              style: TextStyle(color: Colors.white),
            ),
          );
        }
      ),
      ),
    );
  }
}
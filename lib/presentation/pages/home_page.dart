import 'package:flutter/material.dart';
import 'package:ghibli_explorer/core/constants/constants.dart';
class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ghibli.jpg'),
            fit:BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withAlpha(150), BlendMode.dstATop)
          ),
        ),
        child:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              Text(
                Constants.welcomeMessage,
                style: StyleConstants.welcomeMessage
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/films');
                },
                  
                child: Text(Constants.filmsTitle,style: StyleConstants.txtButton),
                style:StyleConstants.primaryButton,
                
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/characters');
                },
                child: Text(Constants.charactersTitle,style: StyleConstants.txtButton),
                style:StyleConstants.primaryButton,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){},
                child: Text(Constants.locationsTitle,style: StyleConstants.txtButton),
                style:StyleConstants.primaryButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
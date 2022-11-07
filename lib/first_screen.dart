import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_provider.dart';
import 'model_class.dart';

class screenone extends StatefulWidget {
  const screenone({Key? key}) : super(key: key);

  @override
  State<screenone> createState() => _screenoneState();
}

class _screenoneState extends State<screenone> {

  var screenproviderfalse;
  var screenprovidertrue;

  @override
  Widget build(BuildContext context) {
    screenproviderfalse = Provider.of<screenoeprovider>(context, listen: false);
    screenprovidertrue = Provider.of<screenoeprovider>(context, listen: true);

    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended for you",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Provider.of<screenoeprovider>(context).dataone.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){

                        Provider.of<screenoeprovider>(context,listen: false).datapick = screenModel(
                            appname: Provider.of<screenoeprovider>(context,listen: false).dataone[index].appname,
                            photo: Provider.of<screenoeprovider>(context,listen: false).dataone[index].photo,
                            star: Provider.of<screenoeprovider>(context,listen: false).dataone[index].star
                        );

                        Navigator.pushNamed(context, '/detail');
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.asset(Provider.of<screenoeprovider>(context).dataone[index].photo as String),
                      ),
                    ),
                    //SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Container(
                          width: 100,
                          child: Text("${Provider.of<screenoeprovider>(context,listen: false).dataone[index].appname}")),
                    ),
                    Text("${Provider.of<screenoeprovider>(context,listen: false).dataone[index].star} ★"),
                  ],
                ),
              );
            },
          ),
        ),


        const SizedBox(
          height: 14,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New & updated apps",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Provider.of<screenoeprovider>(context).datatwo.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Provider.of<screenoeprovider>(context,listen: false).datapick = screenModel(
                            appname: Provider.of<screenoeprovider>(context,listen: false).datatwo[index].appname,
                            photo: Provider.of<screenoeprovider>(context,listen: false).datatwo[index].photo,
                            star: Provider.of<screenoeprovider>(context,listen: false).datatwo[index].star
                        );

                        Navigator.pushNamed(context, '/detail');
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.network(Provider.of<screenoeprovider>(context).datatwo[index].photo as String),
                      ),
                    ),
                    //SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Container(
                          width: 100,
                          child: Text("${Provider.of<screenoeprovider>(context,listen: false).datatwo[index].appname}")),
                    ),
                    Text("${Provider.of<screenoeprovider>(context,listen: false).datatwo[index].star} ★"),
                  ],
                ),
              );
            },
          ),
        ),



        const SizedBox(
          height: 14,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Suggested for you",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Provider.of<screenoeprovider>(context).datathree.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Provider.of<screenoeprovider>(context,listen: false).datapick = screenModel(
                            appname: Provider.of<screenoeprovider>(context,listen: false).datathree[index].appname,
                            photo: Provider.of<screenoeprovider>(context,listen: false).datathree[index].photo,
                            star: Provider.of<screenoeprovider>(context,listen: false).datathree[index].star
                        );

                        Navigator.pushNamed(context, '/detail');
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(Provider.of<screenoeprovider>(context).datathree[index].photo as String,)),
                      ),
                    ),
                    //SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Container(
                          height: 30,
                          width: 100,
                          alignment: Alignment.centerLeft,
                          child: Text("${Provider.of<screenoeprovider>(context,listen: false).datathree[index].appname}")),
                    ),
                    Text("${Provider.of<screenoeprovider>(context,listen: false).datathree[index].star} ★"),
                  ],
                ),
              );
            },
          ),
        ),



        const SizedBox(
          height: 14,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Editor's Choice apps",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Provider.of<screenoeprovider>(context).datafour.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Provider.of<screenoeprovider>(context,listen: false).datapick = screenModel(
                            appname: Provider.of<screenoeprovider>(context,listen: false).datafour[index].appname,
                            photo: Provider.of<screenoeprovider>(context,listen: false).datafour[index].photo,
                            star: Provider.of<screenoeprovider>(context,listen: false).datafour[index].star
                        );

                        Navigator.pushNamed(context, '/detail');
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.network(Provider.of<screenoeprovider>(context).datafour[index].photo as String),
                      ),
                    ),
                    //SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Container(
                          width: 100,
                          child: Text("${Provider.of<screenoeprovider>(context,listen: false).datafour[index].appname}")),
                    ),
                    Text("${Provider.of<screenoeprovider>(context,listen: false).datafour[index].star} ★"),
                  ],
                ),
              );
            },
          ),
        ),


      ],
    );
  }

}
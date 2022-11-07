import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_provider.dart';
import 'model_class.dart';


class screentwo extends StatefulWidget {
  const screentwo({Key? key}) : super(key: key);

  @override
  State<screentwo> createState() => _screentwoState();
}

class _screentwoState extends State<screentwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: Provider.of<screenoeprovider>(context).alldata.length,
            itemBuilder: (context,index){
              return Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                    height: 25,
                    width: 25,
                    alignment: Alignment.center,
                    child: Text("$index",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                  ),
                  GestureDetector(
                    onTap: (){
                      Provider.of<screenoeprovider>(context,listen: false).datapick = screenModel(
                          appname: Provider.of<screenoeprovider>(context,listen: false).alldata[index].appname,
                          photo: Provider.of<screenoeprovider>(context,listen: false).alldata[index].photo,
                          star: Provider.of<screenoeprovider>(context,listen: false).alldata[index].star
                      );

                      Navigator.pushNamed(context, '/detail');
                    },
                    child: Container(
                      height: 90,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 55,
                              width: 55,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(Provider.of<screenoeprovider>(context).alldata[index].photo as String,),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            height: 75,
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${Provider.of<screenoeprovider>(context, listen: false).alldata[index].appname}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Daydream Studios Inc.",
                                  style: TextStyle(
                                      color: Colors.green.shade700,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${Provider.of<screenoeprovider>(context).alldata[index].star} ★",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            }
        ),
      ),
    );
  }
}
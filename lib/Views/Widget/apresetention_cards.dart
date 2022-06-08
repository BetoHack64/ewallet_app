import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



  class ApresentionCardComponent extends StatelessWidget {
  const ApresentionCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container(
      padding:EdgeInsets.only(top:6,right: 6,left: 6),
      child: Row(children: <Widget>[
        Container(
          //width: Get.width *0.52,
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            SizedBox(height: Get.height*0.018,),
            Container(
              alignment: Alignment.center,
              //height: Get.height*0.06,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white),
              child: Text("Ativar",style: TextStyle(color: Colors.blue),),
            ),
          ],),),



      ]
      )
  );
  }
  }


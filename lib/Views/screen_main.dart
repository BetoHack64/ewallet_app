import 'package:ewallt_app/Views/Widget/apresetention_cards.dart';
import 'package:ewallt_app/Views/history/history_view.dart';
import 'package:ewallt_app/Views/home/home.dart';
import 'package:ewallt_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenMain extends StatefulWidget{
  const ScreenMain({Key? key}) : super(key: key);

  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> with SingleTickerProviderStateMixin {


  @override
  void initState() {
    controller.tabController = TabController(length: 4, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
   return SafeArea(child: GestureDetector(
     onTap: (){
       FocusScope.of(context).unfocus();
     },
     child: Scaffold(
       body: TabBarView(
         physics: NeverScrollableScrollPhysics(),
         controller: controller.tabController,
         children: [
           ScreenHome(),
           HistoryView(),
           Column(children: [Text("A carregar Cartao"),],),
           Column(children: [Text("A carregar Cartao"),],)
         ],
       ),
         bottomNavigationBar:Obx(

      () => BottomNavigationBar(

             onTap: (index) {
               controller.currentBottomIndex.value = index;
               controller.tabController.animateTo(index);
             }
             ,
             currentIndex:controller.currentBottomIndex.value ,
             items:  const [
               BottomNavigationBarItem(
                   icon: Icon(
                     Icons.home,
                   ),
                   label: "Home",),
               BottomNavigationBarItem(
                   icon: Icon(
                     Icons.history,
                   ),
                   label: "Historico"),
               BottomNavigationBarItem(
                   icon: Icon(Icons.analytics ),
                   label: "Estatistica"),

               BottomNavigationBarItem(
                   icon: Icon(Icons.settings,),
                   label: "Conta")
             ],
           ),
         )),
   ));
  }
}
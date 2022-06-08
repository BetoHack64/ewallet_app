import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Controller extends GetxController {


  var phoneMaskControllerAO = new MaskTextInputFormatter(mask: '### ### ###', filter: { "#": RegExp(r'[0-9]') });
  var phoneMaskControllerMZ = new MaskTextInputFormatter(mask: '### ### ###', filter: { "#": RegExp(r'[0-9]') });
  var phoneMaskControllerCb = new MaskTextInputFormatter(mask: '### ### ###', filter: { "#": RegExp(r'[0-9]') });
  //var qtdMask = new MaskTextInputFormatter(mask: '#####', filter: { "#": RegExp(r'[0-9]') });

  late TabController tabController;
  RxInt currentBottomIndex = 0.obs;


  RxString searchProduct="".obs;
  RxBool userIsLogged=false.obs;


  RxString localEntrega="".obs;
  RxDouble subTotal=0.0.obs;
  RxDouble total=0.0.obs;

 // RxString  dataDeEntrega(date)=>DateFormat("dd-mm-yyy").format(date).obs;

  RxDouble pontos=0.0.obs;
  var custoDeServico=0.0;
  RxDouble valorTotal=0.0.obs;
  RxInt desconto=0.obs;
  RxDouble valorDesconto=0.0.obs;


}


class TextFieldController {
  TextEditingController paisController=TextEditingController();

  TextEditingController provinciaController=TextEditingController();
  TextEditingController phoneEditingController = TextEditingController();
  TextEditingController senhaEditingController = TextEditingController();
  TextEditingController searchTextController = TextEditingController();
  TextEditingController nameTextController = TextEditingController();
  TextEditingController sobreNomeTextController = TextEditingController();
  TextEditingController residenciaAtualControler = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  String provinciaSelecionada = "Luanda";
  String cidadeSelecionada = "Viana";
  TextEditingController bairroEditingController = TextEditingController();
  TextEditingController ruaEditingController = TextEditingController();
  TextEditingController codigoDeActivacaoController = TextEditingController();
  TextEditingController confirmaSenhaController = TextEditingController();
  String paisSelecionado = "Angola";

  RxBool senhaInvisivel = true.obs;
  RxBool userIsLogged = false.obs;

}






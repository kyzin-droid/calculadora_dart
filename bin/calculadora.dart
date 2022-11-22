import 'dart:convert';
import 'dart:io';

import 'package:calculadora/calculadora.dart' as calculadora;

void main(List<String> arguments) {
  print("Bem vindos a nossa calculadora");
  
  print("Informe o primeiro numero");
  var line = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(line ?? "0");

  print("Informe o segundo numero");
  line = stdin.readLineSync(encoding: utf8);
  var numero2 = double.parse(line ?? "0");

  print("Informe a operação matematica (+, -, *, /):");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "" ;
  
  double resultado = 0;
  switch (operacao){   // switch case facilita leitura
    case "+": resultado = numero1 + numero2;
    break; // serve para quando for executado o bloco ele sai do switch case
    
    case "-": resultado = numero1 - numero2;
    break; 
   
    case "*": resultado = numero1 * numero2;
    break;
    
    case "/": resultado = numero1 / numero2;
    break;

  default:
    print("operação invalida");
      exit(0);
 }

//  resultado = 0;
//  if (operacao == "+"){
//    resultado = numero1 + numero2;
//  } else if (operacao == "-"){
//    resultado = numero1 - numero2;
//  } else if (operacao == "*"){
//    resultado = numero1 * numero2;
//  } else if (operacao == "/"){
//    resultado = numero1 / numero2;
//  } else {
//    print("operação invalida");
//    exit(0);
//  }
  print("operação solicitada: $operacao");
  print(" o resultado da operação é: $resultado");
  

}

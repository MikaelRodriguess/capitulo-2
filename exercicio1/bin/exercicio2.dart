import 'dart:io';

void main(){
  num? mediaFinal2;

  print('Digite a sua primeira nota:');
  num nota1 = double.parse(stdin.readLineSync()!);
  nota1 *= 2;
  print('Digite a sua segunda nota:');
  num nota2 = double.parse(stdin.readLineSync()!);
  nota2 *= 3;
  print('Digite a sua terceira nota:');
  num nota3 = double.parse(stdin.readLineSync()!);
  nota3 *= 5;
  num mediaFinal = (nota1 + nota2 + nota3) / 10;
  print('Sua nota é : $mediaFinal.');
  if (mediaFinal >= 6){
    print('Você está Aprovado!');
  }else if(mediaFinal < 4){
    print('Você está Reprovado!');
  }else if (mediaFinal < 6 && mediaFinal >= 4){
    print('Você ficou de Recuperação! \nDigite a sua nota de recuperação para efetuar o cálculo da media final:');
    num notaRecuperacao = double.parse(stdin.readLineSync()!);
    mediaFinal2 = (mediaFinal + notaRecuperacao) / 2;
    print('Media Final : $mediaFinal2.');
  }if (mediaFinal2! >= 5.5){
    print('Você está Aprovado!');
  }else{
    print('Você está Reprovado!');}
}
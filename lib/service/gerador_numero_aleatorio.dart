import 'dart:math';

class GeradorNumeroAleatorio () {
  static int gerarNumeroAleatorio(int numeroMaximo){
    Random numeroAleatori = Random();
    return numeroAleatori.nextInt(numeroMaximo);
  }
}
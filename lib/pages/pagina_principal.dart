import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/service/gerador_numero_aleatorio.dart';

class PaginaPrincial extends StatefulWidget {
  const PaginaPrincial({super.key});
  @override
  State<PaginaPrincial> createState() => _PaginaPrincialState();
}

class _PaginaPrincialState extends State<PaginaPrincial> {
  var numeroGerado = 0;
  var quantidadecliques = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("camando metodo build");
    return  Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.red,
        title: Text(
          "Meu App", 
          //style: GoogleFonts.pacifico(),
          )
        ),

        body:  Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.cyan,
                child: Text(
                  "Açoes do usuario"
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  color: Colors.orange,
                  child: Text(
                    "Foi clicado $quantidadecliques vezes"
                    ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.indigo,
                child: Text(
                  "O numero gerado foi $numeroGerado",
                //style: GoogleFonts.acme(fontSize: 60),
                  ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                          child: Text(
                          "nome:"
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.green,
                          child: Text(
                          "José Victor Araújo Rojas"
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.blue,
                          child: Text(
                          "30"
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_box),
          onPressed: () { 
            setState(() {
              numeroGerado = GeradorNumeroAleatorio.gerarNumeroAleatorio(100);
              quantidadecliques++;
            });
            }
          ),
    );
  }
}
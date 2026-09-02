import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 8,
                      child: Image.network(
                        "https://hermes.dio.me/companies/a169bb67-5f72-4289-9778-fcea58dfa19a.png",
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Já tem cadastro?",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Faça seu login e make the change._",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: -1),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 141, 79, 151),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 141, 79, 151),
                        ),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color.fromARGB(255, 141, 79, 151),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: -1),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 141, 79, 151),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 141, 79, 151),
                        ),
                      ),
                      hintText: "Senha",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color.fromARGB(255, 141, 79, 151),
                      ),
                      suffixIcon: Icon(Icons.visibility, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 141, 79, 151),
                        ),
                      ),
                      child: Text(
                        "ENTRAR",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: Text(
                    "Criar conta",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

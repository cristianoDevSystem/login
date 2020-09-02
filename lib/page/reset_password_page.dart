import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 90, 2, 115),
          ),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/reset-password-icon.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Esqueceu a senha?',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Por favor, informe o E-mail associado a sua conta que enviaremos um link para o mesmo com as instruções para restauração da sua senha.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 90, 2, 115),
                ),
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 90, 2, 115),
                  fontWeight: FontWeight.w400,
                ),
                labelText: 'E-mail',
                hintText: 'Preencha com o E-mail cadastrado.',
              ),
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 90, 2, 115),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color.fromARGB(255, 150, 38, 87),
                    Color.fromARGB(255, 227, 79, 143),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    'Enviar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/page/reset_password_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

bool _visiliblePassword = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              width: 128,
              height: 128,
              child: Image.asset('assets/acai-logo.png'),
            ),
            TextFormField(
              autocorrect: false,
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 90, 2, 115),
                ),
                hintText: 'Informe seu e-mail',
                labelText: 'E-mail',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 90, 2, 115),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 90, 2, 115),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: !_visiliblePassword,
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.lock,
                  color: Color.fromARGB(255, 90, 2, 115),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _visiliblePassword = !_visiliblePassword;
                    });
                  },
                  child: Icon(
                    _visiliblePassword == false
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Color.fromARGB(255, 90, 2, 115),
                  ),
                ),
                hintText: 'Informe a senha',
                labelText: 'Senha',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 90, 2, 115),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 90, 2, 115),
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  'Esqueci minha senha',
                  style: TextStyle(
                    color: Color.fromARGB(255, 90, 2, 115),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color.fromARGB(255, 2, 115, 42),
                    Color.fromARGB(255, 70, 166, 55),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset('assets/acai.png'),
                          height: 28,
                          width: 26,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Login com o Facebook',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset('assets/fb-icon.png'),
                          height: 28,
                          width: 28,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  'Cadastrar-se',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 90, 2, 115),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

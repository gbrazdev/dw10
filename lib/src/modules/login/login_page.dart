import 'package:delivery_backoffice/src/core/ui/helpers/size_extensions.dart';
import 'package:delivery_backoffice/src/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenShortestSide = context.scrrenShortestSide;
    final screenWidth = context.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenShortestSide * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/lanche.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: screenShortestSide * 0.6,
            padding: EdgeInsets.only(top: context.percentHeight(.10)),
            child: Image.asset('assets/images/logo.png'),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: context.percentWidth(screenWidth < 1300 ? .7 : .3),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FractionallySizedBox(
                        widthFactor: .3,
                        child: Image.asset('assets/images/logo.png'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Login',
                          style: context.textStyles.textTitle,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Digite seu email',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          hintText: 'Digite sua Senha',
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Entrar'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

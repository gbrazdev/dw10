import 'package:delivery_backoffice/src/core/ui/helpers/loader.dart';
import 'package:delivery_backoffice/src/core/ui/helpers/messages.dart';
import 'package:delivery_backoffice/src/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: context.colors.black,
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navigator.of(context).pushNamed('/login');
          showLoader();
          await Future.delayed(const Duration(seconds: 2));
          hideLoader();

          showError('erro');
        },
        child: const Icon(Icons.login),
      ),
      body: Container(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Digite seu email',
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Entrar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

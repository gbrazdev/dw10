import 'package:delivery_backoffice/src/core/env/env.dart';
import 'package:delivery_backoffice/src/core/ui/helpers/loader.dart';
import 'package:delivery_backoffice/src/core/ui/helpers/messages.dart';
import 'package:delivery_backoffice/src/core/ui/helpers/size_extensions.dart';
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
        child: Column(
          children: [
            Text(
              Env.instance.get('backend_base_url'),
            ),
            Text(context.width.toString()),
          ],
        ),
      ),
    );
  }
}

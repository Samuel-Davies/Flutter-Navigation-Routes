import 'package:flutter/material.dart';
import '../routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic result = 'Data to come back';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.secondPage);
              },
              child: const Text('Go to second page'),
            ),
            ElevatedButton(
              onPressed: () async {
                var resultBack = await Navigator.of(context)
                    .pushNamed(RouteManager.thirdPage, arguments: {
                  'name': 'DAVIES',
                });

                setState(() {
                  result = resultBack;
                });
              },
              child: const Text('Go to third page'),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}

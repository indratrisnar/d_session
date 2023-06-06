import 'package:d_session/d_session.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test D Session'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const ListTile(title: Text('Custom')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Map settings = {
                    'notif': true,
                    'reminder': true,
                    'lang': 'id_ID',
                  };
                  DSession.setCustom('settings', settings);
                },
                child: const Text('Save'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final data = await DSession.getCustom('settings');
                  debugPrint(data.toString());
                },
                child: const Text('Get'),
              ),
              ElevatedButton(
                onPressed: () {
                  DSession.removeCustom('settings');
                },
                child: const Text('Remove'),
              ),
            ],
          ),
          const ListTile(title: Text('User')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Map user = {
                    'id': 'aha276avsUHUa',
                    'email': 'flutter_d_lux@gmail.com',
                    'username': 'indre',
                  };
                  DSession.setUser(user);
                },
                child: const Text('Save'),
              ),
              ElevatedButton(
                onPressed: () {
                  DSession.getUser().then((value) {
                    debugPrint(value.toString());
                    if (value != null) {
                      debugPrint(value['email']);
                    }
                  });
                },
                child: const Text('Get'),
              ),
              ElevatedButton(
                onPressed: () {
                  DSession.removeUser();
                },
                child: const Text('Remove'),
              ),
            ],
          ),
          const ListTile(title: Text('Token')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Map data = {
                    'token': 'askuaysuabs',
                    'expire': '2023-10-10 01:01:01',
                  };
                  DSession.setToken(data);
                },
                child: const Text('Save'),
              ),
              ElevatedButton(
                onPressed: () {
                  DSession.getToken()
                      .then((value) => debugPrint(value.toString()));
                },
                child: const Text('Get'),
              ),
              ElevatedButton(
                onPressed: () {
                  DSession.removeToken();
                },
                child: const Text('Remove'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

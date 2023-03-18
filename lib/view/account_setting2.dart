import 'package:flutter/material.dart';

class AccountSetting2Page extends StatefulWidget {
  const AccountSetting2Page({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AccountSetting2PageState createState() => _AccountSetting2PageState();
}

class _AccountSetting2PageState extends State<AccountSetting2Page> {
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('アカウント設定'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey,
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.redAccent),
                  minHeight: 10,
                  value: _progress,
                ),
              ),
              ElevatedButton(
                child: Text('次へ'),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => AccountSetting3()),
                  // );
                  setState(() {
                    if (_progress == 1.0) {
                      _progress = 0;
                    } else {
                      _progress += 0.2;
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
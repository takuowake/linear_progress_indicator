import 'package:flutter/material.dart';
import 'package:linear_progress_indicator/view/account_setting2.dart';

class AccountSetting1Page extends StatefulWidget {
  const AccountSetting1Page({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AccountSetting1PageState createState() => _AccountSetting1PageState();
}

class _AccountSetting1PageState extends State<AccountSetting1Page> {
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
                  value: 0,
                ),
              ),
              ElevatedButton(
                child: Text('次へ'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountSetting2Page()),
                  );
                  // setState(() {
                  //   if (_progress == 1.0) {
                  //     _progress = 0;
                  //   } else {
                  //     _progress += 0.2;
                  //   }
                  // });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
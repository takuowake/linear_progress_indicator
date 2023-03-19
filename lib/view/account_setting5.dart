import 'package:flutter/material.dart';
import 'package:linear_progress_indicator/view/account_setting1.dart';

class AccountSetting5Page extends StatefulWidget {
  const AccountSetting5Page({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AccountSetting5PageState createState() => _AccountSetting5PageState();
}

class _AccountSetting5PageState extends State<AccountSetting5Page> {
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
                  value: 0.8,
                ),
              ),
              ElevatedButton(
                child: Text('1へ戻る'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountSetting1Page()),
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
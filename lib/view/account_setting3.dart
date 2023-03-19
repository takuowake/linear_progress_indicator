import 'package:flutter/material.dart';
import 'package:linear_progress_indicator/view/account_setting4.dart';

class AccountSetting3Page extends StatefulWidget {
  const AccountSetting3Page({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AccountSetting3PageState createState() => _AccountSetting3PageState();
}

class _AccountSetting3PageState extends State<AccountSetting3Page> {
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
                  value: 0.4,
                ),
              ),
              ElevatedButton(
                child: Text('次へ'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountSetting4Page()),
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
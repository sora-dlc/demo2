import 'package:flutter/material.dart';
import 'package:flutter_demo_app_2/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String>titleList = ['amazon', '楽天', 'yahoo!','zozo','Uber'];
  List<String>idList = ['amazon1', 'rakuten1', 'yahoo1','zozo1','Uber1'];
  List<String>pwList = ['amazonnopasu', 'rakutennopasu', 'yahoonopasu','zozonopasu','Ubernopasu'];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('パスワードポスト'),
      ),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (BuildContext context, int i){
        return Column(
          children: [
            ListTile(
              onTap:(){
                ///画面遷移の処理
                Navigator.push(context,
                    MaterialPageRoute(
                        builder:(context)=> NextPage(
                          title: titleList[i],
                        id:idList[i],
                        pw:pwList[i])));
              },
              leading: Icon(Icons.https),
              title: Text(titleList[i]),
            ),
            //線
            Divider(thickness: 2,),
          ],
        );

      }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //ボタンが押された時の処理
          titleList.add('google');
          titleList.add('google+');
          print(titleList);
          setState(() {

          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


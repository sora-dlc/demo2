import 'package:flutter/material.dart';
import 'package:flutter_demo_app_2/next_next_page.dart';

class NextPage extends StatefulWidget {
  final String title;
  final String id;
  final String pw;
  const NextPage({
    Key? key,
    required this.title,
    required this.id,
    required this.pw,
  }) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children:[
                Container(
                    width: 30,
                    child: Text('ID')),
                Container(
                    width: 10,
                    child: Text(':')),
                Text(widget.id),
              ],
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              children:[
                Container(
                    width: 30,
                    child: Text('PW')),
                Container(
                    width: 10,
                    child: Text(':')),
                Text(widget.pw),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //ボタンが押された時の処理
          Navigator.push(context, MaterialPageRoute(builder:(context)=> NextNextPage()));
          setState(() {

          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),

    );
  }
}

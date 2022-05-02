import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //oooaaaaiiiiii
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
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();

    List<String> list = ["260000", "260001", "260002", "260003"];
    //山下くんがやってること。
    //ListをtoStringしてるからListの要素を全て結合して、1つの文字列から260002って文字列の開始位置を探してる。だから17がでる。
    print("山下くんのコード再現");
    print(list.toString().indexOf("260002"));
    //Listの中から特定の文字列の位置を知る方法は下の書き方。これの結果は2と返ってくる（2は260002がいるListの番号）。
    print("これがやりたかったのかな？（指定した文字列がListの何番目に存在してるか知る方法）");
    print(list.indexOf("260002"));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            test(),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget test(){
    return Column(
      children: [
        Text("A"),
        Text("B")
      ],
    );
  }
}



class Test {

  int a;
  int b;

  Test(this.a, this.b) {
    print("インスタンスが作られました");
    plus();
    minus();
    kakeru();
    waru();
  }

  void plus() {
    print(a + b);
  }
  void minus() {
    print(a - b);
  }
  void kakeru() {
    print(a * b);
  }
  void waru() {
    print(a / b);
  }

}

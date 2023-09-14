import 'package:flutter/material.dart';

//main関数
void main() => runApp(const MyTodoApp());

class MyTodoApp extends StatelessWidget {
  const MyTodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //アプリ名
      title: 'My Todo App',
      theme: ThemeData(
        //テーマカラー
        primarySwatch: Colors.blue,
      ),
      //リスト一覧画面を表示
      home: const TodoListPage(),
    );
  }
}

//リスト一覧画面用ウィジェット
class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //AppBarを表示し、タイトルも設定
      appBar: AppBar(
        title: const Text('リスト一覧'),
      ),

      //listviewと使いリスト一覧を表示
      body: ListView(
        children: const <Widget>[
          Card(
            child: ListTile(
              title: Text('ニンジンを買う'),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('玉ねぎを買う'),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('ジャガイモを買う'),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('カレールーを買う'),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // "push"で新規画面に遷移
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const TodoAddPage();
            }),
          );
        },

        child: const Icon(Icons.add),
      ),
    );
  }
}

//リスト追加画面用ウィジェット
class TodoAddPage extends StatelessWidget {
  const TodoAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リスト追加'),
      ),

      //NOTE:リスト追加フォームを表示する https://www.flutter-study.dev/todo-app/add-page
      body: Center(
        child: TextButton(
          //ボタンをクリックしたときの処理
          onPressed: () {
            // "pop"で前の画面に戻る
            Navigator.of(context).pop();
          },

          child: const Text('リスト追加画面（クリックで戻る）'),
        ),
      ),
    );
  }
}
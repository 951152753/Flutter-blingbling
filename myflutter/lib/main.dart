/*
 * @Descripttion: 
 * @Author: yangkexin
 * @Date: 2020-08-07 19:15:02
 * @LastEditors: Please set LastEditors
 * @LastEditTime: 2020-08-12 15:58:10
 */
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'; // 引入包

void main() => runApp(new MyApp()); // main函数使用了(=>)符号, 这是Dart中单行函数或方法的简写

class MyApp extends StatelessWidget {
  // 该应用程序继承了 StatelessWidget，这将会使应用本身也成为一个widget。 在Flutter中，大多数东西都是widget，包括对齐(alignment)、填充(padding)和布局(layout)
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random(); // 实例化wordPair
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold( 
      // Scaffold是Material library中提供的一个widget, 它提供了默认的导航栏、标题和包含主屏幕widget树的body属性。widget树可以很复杂。
      // widget的主要工作是提供一个build()方法来描述如何根据其他较低级别的widget来显示自己。
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
          centerTitle: true, // 标题居中
        ),
        body: new Center(
          // body的widget树中包含了一个Center widget,
          // Center widget又包含一个 Text 子widget。
          // Center widget可以将其子widget树对其到屏幕中心。
          
          // child: new Text('Hello World'),
          child: new Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyResponsiveView(),
    );
  }
}

class MyResponsiveView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Flutter App'),
      ),
      body: ResponsiveBody(),
    );
  }
}

class ResponsiveBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return DesktopView();
        } else {
          return MobileView();
        }
      },
    );
  }
}

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 600,
        height: 400,
        color: Colors.blue,
        child: Text('Desktop Content'),
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        color: Colors.green,
        child: Text('Mobile Content'),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ScaffoldBlueprint extends StatefulWidget {
  final String title;
  final Widget child;
  final Widget? button;
  final Widget? backButton;
  
  const ScaffoldBlueprint({Key? key, required this.title, required this.child, this.button, this.backButton}) : super(key: key);

  @override
  ScaffoldBlueprintState createState() => ScaffoldBlueprintState();
}

class ScaffoldBlueprintState extends State<ScaffoldBlueprint> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        leading: widget.backButton
      ),
      body: widget.child,
      floatingActionButton: widget.button,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
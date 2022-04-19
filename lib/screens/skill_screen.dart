import 'package:flutter/material.dart';
import 'package:blood_bowl_app/widgets/scaffold_blueprint.dart';

class SkillScreen extends StatefulWidget {
  const SkillScreen({Key? key}) : super(key: key);

  @override
  SkillScreenState createState() => SkillScreenState();
}

class SkillScreenState extends State<SkillScreen> {
  
  @override
  Widget build(BuildContext context) {
    return ScaffoldBlueprint(
      title: 'Skills', 
      child: const Placeholder(),
      backButton: IconButton(
        onPressed: () => Navigator.pop(context), 
        icon: const Icon(Icons.arrow_back)
      ),
    );
  }
}
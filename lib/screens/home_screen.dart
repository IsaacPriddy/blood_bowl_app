import 'package:flutter/material.dart';
import 'package:blood_bowl_app/widgets/scaffold_blueprint.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  Widget listEntryBP(text, goto) {
    return ListTile(
      title: Text(text),
      onTap: () => {
        Navigator.pushNamed(
          context,
          goto,
        ),
      }
    );
  }

  Widget homeScreenLayout() {
    String testingGoto = 'skill_screen';

    return ListView(
      children: [
        listEntryBP("New Game", testingGoto),
        // May put the next two under a RULES banner instead
        listEntryBP("Kick-Off Rules", testingGoto),
        listEntryBP("Weather Rules", testingGoto),
        listEntryBP("Teams", testingGoto),
        listEntryBP("Skills", testingGoto),
        listEntryBP("Errata", testingGoto),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBlueprint(
      title: 'Home', 
      child: homeScreenLayout()
    );
  }
}
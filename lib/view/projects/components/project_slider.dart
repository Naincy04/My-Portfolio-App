import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


const List<Widget> fruits = <Widget>[
  Text('App Development'),
  Text('Web Development'),
  Text('Others'),
];

void main() => runApp(const ToggleButtonsExampleApp());

class ToggleButtonsExampleApp extends StatelessWidget {
  const ToggleButtonsExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const ToggleButtonsSample(),
    );
  }
}

class ToggleButtonsSample extends StatefulWidget {
  const ToggleButtonsSample({super.key});
  @override
  State<ToggleButtonsSample> createState() => _ToggleButtonsSampleState();
}

class _ToggleButtonsSampleState extends State<ToggleButtonsSample> {
  final List<bool> _selectedFruits = <bool>[true, false, false];
 final controller = Get.put(ProjectController());


  @override
  Widget build(BuildContext context) {
    Theme.of(context);

    return Center(
      child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(
                vertical: defaultPadding, horizontal: defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(colors: [
                  Colors.pinkAccent,
                  Colors.blue,
                ]),
                boxShadow:  const [
                  BoxShadow(
                    color: Colors.pink,
                    offset: Offset(-2, 0),
                    // blurRadius: controller.hovers[index] ? 20 : 10,
                  ),
                  BoxShadow(
                      color: Colors.blue,
                      offset: Offset(2, 0),),
                      // blurRadius: controller.hovers[index] ? 20 : 10,),
                ],        
            ),
                  child: ToggleButtons(
                    direction: Axis.horizontal,
                    onPressed: (int index) {
                      setState(() {
                        for (int i = 0; i < _selectedFruits.length; i++) {
                          _selectedFruits[i] = i == index;
                        }
                      });
                    },
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    selectedBorderColor: Colors.pinkAccent,
                    selectedColor: Colors.white,
                    fillColor: Colors.pinkAccent,
                    color: Colors.white,
                    constraints: const BoxConstraints(
                      minHeight: 50.0,
                      minWidth: 155.0,
                    ),
                    isSelected: _selectedFruits,
                    children: fruits,
                  ),
                ),
                const SizedBox(height: 10),
               
              ],
          
        
      ),
    );
  }
}

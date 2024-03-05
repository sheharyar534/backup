import 'package:flutter/material.dart';
import 'package:flutter_application_1/mix/appbar.dart';
import 'package:flutter_application_1/mix/textfifeld.dart';


class AgentRaferral extends StatefulWidget {
  const AgentRaferral({super.key});

  @override
  State<AgentRaferral> createState() => _AgentRaferralState();
}

class _AgentRaferralState extends State<AgentRaferral> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const AppBar1()
      ),
      body: const Column(
        children: [
           TextField1()
          
        ],
      ),
    );
  }
}
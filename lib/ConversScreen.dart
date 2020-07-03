import 'package:flutter/material.dart';

import 'DialogFlow.dart';

class ConversScreen  extends StatelessWidget {
 final String name;
 ConversScreen(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discuss with '+name),
      ),
      /*body: Center(
        child: Text(''+name)
      )*/
      body:DialogFlow(name),
    );
  }
}
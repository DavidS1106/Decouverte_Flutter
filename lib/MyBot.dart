import 'package:flutter/material.dart';
import 'ConversScreen.dart';

class MyBot extends StatefulWidget {
  @override
  BotState createState() => BotState();
}

class BotState extends State<MyBot> {
  String bot;
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
   return Scaffold( 
     body: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Padding(
              padding: EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical:10.0),
                hintText: 'Name your bot',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                  bot=value;
                return null;
              },
            ),
           ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ConversScreen(bot)),
                    );
                  // Process data.
                 /* Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConversScreen(name:bot]),
                      ),
                  );*/
                }
              },
              child: Text('Valider'),
            ),
          ),
        ],
      ),
    )
   );
  }
}
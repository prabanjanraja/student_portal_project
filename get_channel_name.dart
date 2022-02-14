// a dialog box to get the channel name
import 'package:flutter/material.dart';

class get_name extends StatefulWidget {
  const get_name({Key key}) : super(key: key);

  @override
  _get_nameState createState() => _get_nameState();
}

class _get_nameState extends State<get_name> {
  String channelName = "";
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Enter Channel Name"),
      content: TextField(
        autofocus: true,
        decoration: InputDecoration(
          labelText: 'Channel Name',
          hintText: 'Enter a name for this channel',
        ),
        onChanged: (String value) {
          setState(
            () {
              channelName = value;
            },
          );
          print('inside the get name: $channelName, value is $value');
        },
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(
            context,
            null,
          ),
          child: Text('Clear All'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(
            context,
            channelName,
          ),
          child: Text(channelName.isEmpty ? 'Create' : 'Create $channelName'),
        ),
      ],
    );
  }
}

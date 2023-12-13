import 'package:flutter/material.dart';

class AddReview extends StatefulWidget {
  AddReview({super.key});

  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Reviews',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        ElevatedButton(
            onPressed: () => _dialogBuilder(context),
            child: Container(child: Text('+ Add Review')))
      ],
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Review'),
        content: Text('Share your thoughts!\n'
            '\n'
            'Your reviews help fellow fans discover \n'
            'new favorites. Take a moment to be a \n'
            'critic or a fan – your opinion counts!'),
        actions: <Widget>[
          TextField(
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            minLines: null,
            maxLines: null,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Share your thoughts...',
                labelStyle: TextStyle(color: Colors.grey)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ]),
        ],
      );
    },
  );
}

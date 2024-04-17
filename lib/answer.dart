import 'package:flutter/material.dart';
import './main.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  const Answer(this.selectHandler,this.answer);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
      child: ElevatedButton(
        onPressed: (){
          selectHandler();
          },
        child: Container(
          height: 50,
          // width: double.infinity,
          decoration: BoxDecoration(
            // color: Colors.purpleAccent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(answer, style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
          ),
        ),
      ),
    );
  }
}

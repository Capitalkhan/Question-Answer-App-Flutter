import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;
  const Result(this.score,this.resetHandler);

  String get textTacker{
    String textToBeTacking;

    if(score <= 20){
      return 'You are good and pretty!';
    }else if(score <= 30){
      return 'You are good man!';
    }else if(score <= 40){
      return 'You are not too good!';
    }else{
      return 'You are bad bro!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text('$textTacker $score'),),
        ElevatedButton(onPressed: (){
          resetHandler();

        },
            child: const Center(child: Text('Restart Quiz')))
      ],
    );
  }


}

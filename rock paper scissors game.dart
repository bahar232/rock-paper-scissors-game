import 'dart:math';
import 'dart:io';


void main( ){
 
      
  print('welcome to the rock paper scissors game:)');
  var r= Random();
  print (r.nextInt(10));
  Map<String,String> rules={
   'rock':'scissor',
  'scissor':'paper',
  'paper':'rock',

  };
  var userscore=0;
  var computerscore=0;
  List options=['rock','paper','scissor'];
 
  var computer=options[r.nextInt(options.length)];
   
   print('please choose one of rock, paper, scissor');
   
var user=stdin.readLineSync();
 

  do {
    print('quit');
  } while (user==null || user==int);
   
    print('computer choice is $computer  ');
 if(!options.contains(user)){
      print('inivalid choice');
  
  }


   else if(computer==user){
    print('you are tie ');
  }
    else if(rules[computer]==user){
  
    computerscore+=1;
    print('computer wins and score is $computerscore');
    }
   else  if(rules[user]==computer){

    userscore+=1;
    print('user wins and score is $userscore');
    if (userscore>computerscore) {
      print('play again');
 
    }
    
    }}
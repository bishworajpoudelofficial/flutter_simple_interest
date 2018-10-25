import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(title: "Simple Interest Calculator", home: MyApp(),));

class MyApp extends StatefulWidget {
 
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  double si;
  String value;
   TextEditingController _p = TextEditingController();
  TextEditingController _t = TextEditingController();
  TextEditingController _r = TextEditingController();

 void calcuateInterest(){
setState(() {
  if(_p.text.isNotEmpty && _t.text.isNotEmpty && _r.text.isNotEmpty ){
 double _prin =  double.parse(_p.text);
  double _time = double.parse(_t.text);
  double _rate = double.parse(_r.text);
  si= _prin * _time * _rate / 100;
  value = si.toString();
  }else{
    value = "invalid. Please fill all forms";
  }
 
  
});

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Interest Calculator'),),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: <Widget>[
              
              Text('Simple Interest Calculator', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),


              
              TextField(
            controller: _p,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "50,000",
              labelText: "Enter Principal",
              icon: Icon(Icons.add)
            ),
              ),
               
              TextField(
            controller: _t,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "13.2",
              labelText: "Enter Rate",
              icon: Icon(Icons.add)
            ),
              ),
                
              TextField(
            controller: _r,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "3.2",
              labelText: "Enter Time",
              icon: Icon(Icons.add)
            ),
              ),
              Padding(padding: EdgeInsets.all(12.0),),
               RaisedButton(onPressed: calcuateInterest, child: Text('Calcuate Interest', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),),
              Text('The simple interest is $value.' , style: TextStyle(fontSize: 18.0,),),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
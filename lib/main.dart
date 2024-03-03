import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:practice_demo/nextActivity.dart';
import 'package:practice_demo/widgets/rounded_btn_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//findSystemLocale().then(runTheRestOfMyProgram);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => myhomeState();
}

class myhomeState extends State<MyHomePage> {
  num count = 0;
  RangeValues values=RangeValues(0, 1);

  intcrement() {
    count++;
    setState(() {});
  }

  var n2controlar = TextEditingController();
  var n1controlar = TextEditingController();
  num? ff( int a) {
    int n1 = int.parse(n1controlar.text.toString());
    int n2 = int.parse(n2controlar.text.toString());
    if (a==1) count=n1+n2;
    else if(a==2)count=n1-n2;
    else if(a==3)count=n1*n2;
    else if(a==4)count=n1/n2;
    return count;
  }

  @override
  Widget build(BuildContext context) {
    
    RangeLabels labels=RangeLabels(values.start.toString()  , values.end.toString());
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("radhe ardhe"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 300,
                child: TextField(
                  controller: n1controlar,
                  obscureText: false,
                  style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                    //labelText: "enter your name"
                    ,
                    hintText: 'enter first number',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: 300,
                child: TextField(
                  controller: n2controlar,
                  obscureText: false,
                  style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                    //labelText: "enter your name"
                    ,
                    hintText: 'enter first number',
                  ),
                ),
              ),
            ),
            Padding(

              padding: const EdgeInsets.all(8.0),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  ElevatedButton(onPressed: (){ff(1);setState(() {

                  });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity("ram"),));

                    }, child: Text("add",)),
                  ElevatedButton(onPressed: (){ff(2);setState(() {
                    print(count);
                  });}, child: Text("sub")),
                  ElevatedButton(onPressed: (){ff(3);setState(() {

                  });}, child: Text("mul")),
                  ElevatedButton(onPressed: (){ff(4);setState(() {

                  });}, child: Text("div")),

                ],
              ),

            ),
            Container(
              margin:EdgeInsets.all(8.0) ,
              child:Text("$count",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange),) ,
            ),
            RangeSlider(values: values,
                divisions: 10,
                max: 100,
                min: 0,
                labels: labels,
                onChanged: (newvalew){
                  values=newvalew;

                  setState(() {

                  });

                }),


               Container(
                 // width: 200,
                  //height: 200,
                  child: Text("${values.start}  ${values.end}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange),)),


          ],
        ));
  }
}

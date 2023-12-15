import 'package:flutter/material.dart';

main(){
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "flutter app",
      debugShowCheckedModeBanner: false,
      theme:ThemeData(primarySwatch: Colors.brown),
      home: DashBoardScreen3(),
    );
  }

}
class DashBoardScreen3 extends StatefulWidget{
  @override
  State <DashBoardScreen3> createState()=>_DashBoardScreen3State();
}

class _DashBoardScreen3State extends State<DashBoardScreen3>{
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Current TIme:${time.year}: ${time.month}:${time.second}',style: TextStyle(fontSize:25),),
                ElevatedButton(onPressed: (){
                  setState(() {

                  });
                },  child: Text('Current Time'),

                )
              ],
            ),
          ),
        )

    );
  }
}

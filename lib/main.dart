import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phanuwat Jenphop',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 86, 34, 177)),
        useMaterial3: true,
      ),
      // theme: new ThemeData(scaffoldBackgroundColor: const Color(#FFEFEF)),
      home: const MyHomePage(title: 'CP-SU LED MATRIX'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  // static

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const dotsData = [
    // Digit 0
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 1
    [
      [0, 0, 1, 0, 0],
      [0, 1, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 1, 1, 0],
    ],
    // Digit 2
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 0, 0, 0],
      [1, 1, 1, 1, 1],
    ],
    // Digit 3
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 4
    [
      [0, 0, 0, 1, 0],
      [0, 0, 1, 1, 0],
      [0, 1, 0, 1, 0],
      [1, 0, 0, 1, 0],
      [1, 1, 1, 1, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 0, 1, 0],
    ],
    // Digit 5
    [
      [1, 1, 1, 1, 1],
      [1, 0, 0, 0, 0],
      [1, 1, 1, 1, 0],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 6
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 0],
      [1, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 7
    [
      [1, 1, 1, 1, 1],
      [0, 0, 0, 0, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 1, 0, 0],
      [0, 1, 0, 0, 0],
      [0, 1, 0, 0, 0],
      [0, 1, 0, 0, 0],
    ],
    // Digit 8
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
    // Digit 9
    [
      [0, 1, 1, 1, 0],
      [1, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 1],
      [0, 0, 0, 0, 1],
      [1, 0, 0, 0, 1],
      [0, 1, 1, 1, 0],
    ],
  ];
  int count = 0;

  Widget _lightUp() {
    print(count);
    return Container(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            count;
          });
          // Icon(
          //   Icons.light_mode,
          // );
          count++;
          if (count > 99) {
            count = 0;
          }
        },
        child: 
        
        Icon(Icons.arrow_drop_up_rounded, size: 50),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 248, 109, 109),
        border: Border.all(
          color: Colors.black,
        )
      ),
    );
  }

  Widget _lightDown() {
    print(count);
    return Container(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            count;
          });
          // Icon(
          //   Icons.light_mode,
          // );
          count--;
          if (count < 0) {
            count = 99;
          }
        },
        child: 
        
        Icon(Icons.arrow_drop_down_rounded, size: 50),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 248, 109, 109),
        border: Border.all(
          color: Colors.black,
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: const Color.fromARGB(255, 16, 121, 207),
          elevation: 10.0,
          centerTitle: true,
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(234, 131, 232, 239),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: []),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Upbutton(),
                  // _buildDot(1),
                  //  _buildRow(dotsData[0][0]),
                  //  _buildRow(dotsData[0][1]),
                  //  _buildRow(dotsData[0][2]),
                  //  _buildRow(dotsData[0][3]),
                  //  _buildRow(dotsData[0][4]),
                  //  _buildRow(dotsData[0][5]),

                  // _buildDigit(dotsData[0]),

                  // for (int i = 0; i < dotsData.length; i++)
                  //   _buildDigit(dotsData[i]),
                  
                  _lightUp(),
                  SizedBox(height: 20.0,),
                  _buildDisplay(count),
                  SizedBox(height: 20.0,),
                  _lightDown(),
                ],
              ),      
            ],
          ),
        ));
  }

  Widget _buildDot(int value) {
    Icon _icon;
    if (value == 0) {
      _icon = Icon(
        Icons.circle,
        color: Color.fromARGB(116, 45, 37, 37),
      );
    } else {
      _icon = Icon(Icons.circle, color: Colors.yellowAccent);
    }
    return Container(
      // value = 0 จะแสดงจุดมืด, value = 1 จะแสดงจุดสว่าง      
      child: _icon,
    );
  }

  Widget _buildRow(List<int> dotList) {
    return Row(
      // ...
      // วนลูปค่า int ใน dotList แล้วเรียกไปยัง _buildDot()
      // เพื่อแสดงจุดที่สัมพันธ์กับแต่ละค่า int
      // ...
      children: [
        for (var row in dotList) _buildDot(row),
      ],
    );
  }

  Widget _buildDigit(List<List<int>> rowList) {
    return Column(
      // ...
      // วนลูปค่า list ใน rowList แล้วเรียกไปยัง _buildRow()
      // เพื่อแสดงแถวของจุดที่สัมพันธ์กับแต่ละ list ใน rowList
      // ...
      children: [
        for (var row in rowList) _buildRow(row),
      ],
    );
  }

  // value คือค่าสตริงที่เป็นตัวเลข 2 หลัก เช่น '00', '23', etc.
  Widget _buildDisplay(int value) {
    // แยกตัวเลขแต่ละหลักใน value ออกมา แล้วเรียกไปยัง _buildDigit()
    // แล้วเอา Row มาครอบ เพื่อจัดเรียงตัวเลข 2 หลักในแนวนอน
    int num1 = 0, num2 = 0;
    if (value > 9) {
      num1 = value ~/ 10;
      num2 = value % 10;
    } else {
      num1 = 0;
      num2 = value;
    }

    return Container(
      width: 330.0,
      height: 220.0,
      margin: EdgeInsets.all(8.0),
      // alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Color.fromARGB(255, 165, 39, 185),
        border: Border.all(
          color: Color.fromARGB(255, 241, 51, 187),
          width: 5.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 197, 81, 4),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),      
      ),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox( width: 15.0, ),
                _buildDigit(dotsData[num1]),
                SizedBox( width: 15.0, ),
                _buildDigit(dotsData[num2]),
              ]),
        ],
      ),
      // child: Text(
      //   'ssss',style: TextStyle(color: Color.fromARGB(255, 175, 232, 16), fontSize: 50.0),
      // ),
    );
  }
}

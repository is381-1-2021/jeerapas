import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
        accentColor: Colors.green,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.purple),
        ),
      ),
      initialRoute: '/5',
      routes: <String, WidgetBuilder>{
        '/1' : (context) => FirstPage(),
        '/2' : (context) => SecondPage(),
        '/3' : (context) => ThirdPage(),
        '/4' : (context) => FourthPage(),
        '/5' : (context) => FifthPage(),
        '/6' : (context) => SixthPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Image cat1 = Image.asset('assets/popcat1.PNG', width: 120,);
  Image cat2 = Image.asset('assets/popcat2.png', width: 120,);
  Image catOnShow = Image.asset('assets/popcat1.PNG', width: 120,);
  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'POPCAT',
            ),

            Container(
              height: 150.0,
              width: 150.0,
              margin: EdgeInsets.only(bottom: 50.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.25),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: catOnShow,
              ),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => {
                    setState(() {
                      catOnShow = cat1;
                      _counter--;
                    })
                  }, 
                  child: Text('ลด'),
                  ),
                ElevatedButton(
                  onPressed: () => {
                   setState(() {
                     catOnShow = cat2;
                      _counter++;
                    }) 
                  }, 
                  child: Text('เพิ่ม'),
                  ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.fingerprint),
            tooltip: 'Boutton 1',
            ),
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.bungalow),
            tooltip: 'Boutton 2',
            ),
        ],
       ),
       
       body: Center(
         child: Text('First Page'),
       ),
    );
  }
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
       ),
       body: Center(
         child: Table(
           children: [
             TableRow(
               children: [
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade300,
                  ),
                  child: Text('ID')),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade300,
                  ),
                  child: Text('Name')),
                Container(
                  margin: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade300,
                  ),
                  child: Text('Gender')),
               ],
             ),
             TableRow(
               children: [
                Text('1'),
                Text('Harry'),
                Text('Male'),
               ],
             ),
             TableRow(
               children: [
                Text('2'),
                Text('Hermione'),
                Text('Female'),
               ],
             ),
             TableRow(
               children: [
                Text('3'),
                Text('Ron'),
                Text('Male'),
               ],
             ),
           ],
         ),
       ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.cloud),
              ),
              Tab(
                icon: Icon(Icons.shower),
              ),
              Tab(
                icon: Icon(Icons.wb_sunny),
              ),
            ],
          ),
        ),
         body: TabBarView(
           children: [
            Center(
             child: Text('Cloudy'),
            ),
            Center(
             child: Text('Rainy'),
            ),
            Center(
             child: Text('Sunny'),
            ),
          ],
        ),
      ),
    );
  }
}


class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A','B','C','D','E','F','G','H','I'];
    final List<int> colorCode = <int>[600, 500, 100];

    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Page'),
       ),
       body: ListView.separated(
         padding: EdgeInsets.all(8.0),
         itemCount: entries.length,
         itemBuilder: (context, index){
           return Container(
             height: 100.0,
             color: Colors.amber[colorCode[index%3]],
             child: Center(
               child: Text('Enter ${entries[index]}'),
             ),
           );
         },
         separatorBuilder: (context, int) => Divider(),
       ),
    );
  }
}


class FifthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
       ),
       body: GridView.count(
         crossAxisCount: 2,
         children: List.generate(6,(index){
           return InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/${index+1}');
              },
              child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                   'Page ${index+1}',
                   style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            );
         }),
      ),
    );
  }
}

class SixthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Page'),
      ),
      body: MycustomForm(),
    );
  }
}

class MycustomForm  extends StatefulWidget {
  @override
  _MycustomFormState createState() => _MycustomFormState();
}

class _MycustomFormState extends State<MycustomForm> {

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Your First Name',
              labelText: 'First Name', 
            ),
            validator: (value){
              if (value == null || value.isEmpty){
                return 'Please enter Your First tName';
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.family_restroom),
              hintText: 'Your Last Name',
              labelText: 'Last Name', 
            ),
            validator: (value){
              if (value == null || value.isEmpty){
                return 'Please enter Your Last Name';
              }
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.speed),
              hintText: 'Your Age',
              labelText: 'Age', 
            ),
            validator: (value){
              if (value == null || value.isEmpty){
                return 'Please enter Your Age';
              }

              try {
                if (int.parse(value) < 15){
                return 'Please enter valid age';
                }
              } catch (e) {
              return 'Please enter number only';
              }
            },
          ),
          ElevatedButton(
            onPressed: (){
              if (_formkey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Processing'),
                ));
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

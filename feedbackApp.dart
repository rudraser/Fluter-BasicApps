import 'package:flutter/material.dart';
double total = 0;
void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) =>FirstPage(),
    '/second': (context) =>SecondPage(),
    '/third' :  (context) =>ThirdPage(),
    '/fourth' :  (context) =>FourthPage(),
    '/fifth' :  (context) =>FifthPage(),
    '/sixth' :  (context) =>SixthPage(),
    '/seventh' :  (context) =>SeventhPage(),
  },
));

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double rating = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          decorationColor: Colors.green,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Center(child: Text('How did you like our service? $total',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ))),
          SizedBox(height: 20,),
          Slider.adaptive(
              min:1,
              value: rating,
              max:5,
              divisions: 4,
              label: '$rating',
              onChanged: (newRating){
                setState(() => rating = newRating);

              }),
          ElevatedButton(
            onPressed: () {Navigator.pushNamed(context, '/second'); total += rating;},
            child: Text('Next'),
          )

        ],
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double rating = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
        backwardsCompatibility: false,
        backgroundColor: Colors.grey[800],
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          decorationColor: Colors.green,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text('How did you appreciate the sanitation? $total',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ))),
          SizedBox(height: 20,),
          Slider.adaptive(
              value: rating,
              min:1,
              max:5,
              divisions: 4,
              label: '$rating',
              onChanged: (newRating){
                setState(() => rating = newRating);
              }),
          ElevatedButton(
            onPressed: () {Navigator.pushNamed(context, '/third');total = total +rating;},
            child: Text('Next'),
          )

        ],
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  double rating = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          decorationColor: Colors.green,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text('How was the sound quality? $total',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ))),
          SizedBox(height: 20,),
          Slider.adaptive(
              value: rating,
              min:1,
              max:5,
              divisions: 4,
              label: '$rating',
              onChanged: (newRating){
                setState(() => rating = newRating);

              }),
          ElevatedButton(
            onPressed: () {Navigator.pushNamed(context, '/fourth');total = total +rating;},
            child: Text('Next'),
          )

        ],
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  double rating = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          decorationColor: Colors.green,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text('How was the lighting? $total',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ))),
          SizedBox(height: 20,),
          Slider.adaptive(
              value: rating,
              min:1,
              max:5,
              divisions: 4,
              label: '$rating',
              onChanged: (newRating){
                setState(() => rating = newRating);

              }),
          ElevatedButton(
            onPressed: () {Navigator.pushNamed(context, '/fifth');total = total +rating;},
            child: Text('Next'),
          )

        ],
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);
  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  double rating = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          decorationColor: Colors.green,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text('How likely are you to recommend us to your friends? $total',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ))),
          SizedBox(height: 20,),
          Slider.adaptive(
              value: rating,
              min:1,
              max:5,
              divisions: 4,
              label: '$rating',
              onChanged: (newRating){
                setState(() => rating = newRating);
              }),
          ElevatedButton(
            onPressed: () {Navigator.pushNamed(context, '/sixth');total = total +rating;},
            child: Text('Next'),
          )

        ],
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

class SixthPage extends StatefulWidget {
  const SixthPage({Key? key}) : super(key: key);
  @override
  _SixthPageState createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage> {
  double rating = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          decorationColor: Colors.green,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text('How likely are you to come back here? $total',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ))),
          SizedBox(height: 20,),
          Slider.adaptive(
              value: rating,
              min:1,
              max:5,
              divisions: 4,
              label: '$rating',
              onChanged: (newRating){
                setState(() => rating = newRating);

              }),
          ElevatedButton(
            onPressed: () {Navigator.pushNamed(context, '/seventh');total = total +rating;},
            child: Text('Next'),
          )

        ],
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
int score = total.toInt();
class SeventhPage extends StatefulWidget {
  const SeventhPage({Key? key}) : super(key: key);
  @override
  _SeventhPageState createState() => _SeventhPageState();
}

class _SeventhPageState extends State<SeventhPage> {
  double rating = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback App'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          decorationColor: Colors.green,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: (total<=10)? Text(
                ' $score : We are sorry for your inconvenience',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,

                ))
          :Text('')),
          Container(
              child: (total<=20 && total>10)? Text(
                  ' $score : Hope we serve you better next time',
                  style: TextStyle(
                      color: Colors.yellow,
                    fontSize: 20,
                  ))
                  :Text('')),
          Container(
              child: (total<31 && total>20)? Text(
                  ' $score : We hope you come back next time.',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                  ))
                  :Text('')),
          Center(child: Text('',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ))),
          ElevatedButton(
            onPressed: () {Navigator.pushNamed(context, '/'); total = 0;},
            child: Text('Restart'),
          )

        ],
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

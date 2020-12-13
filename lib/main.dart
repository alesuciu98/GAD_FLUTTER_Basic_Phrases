import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: BasicPhrases(),
  ));
}

class BasicPhrases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Basic Phrases'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();
  String localFilePath;

  // ignore: always_specify_types
  List<String> mytext = [
    'salut(italiana)',
    'salut(engleza)',
    'ce faci?(italiana)',
    'ce faci?(engleza)',
    'unde esti?(italiana)',
    'unde esti?(engleza)',
    'masina(italiana)',
    'masina(engleza)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.blue[800]),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: mytext.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return FlatButton(
            textTheme: ButtonTextTheme.accent,
            color: Colors.yellow[800],
            onPressed: () {
              switch (mytext[index]) {
                case 'salut(italiana)':
                  {
                    audioCache.play('salut(italiana).mp3');
                  }
                  break;

                case 'salut(engleza)':
                  {
                    audioCache.play('salut(engleza).mp3');
                  }
                  break;

                case 'ce faci?(italiana)':
                  {
                    audioCache.play('ce faci(italiana).mp3');
                  }
                  break;

                case 'ce faci?(engleza)':
                  {
                    audioCache.play('ce faci(engleza).mp3');
                  }
                  break;

                case 'unde esti?(italiana)':
                  {
                    audioCache.play('unde esti(italiana).mp3');
                  }
                  break;

                case 'unde esti?(engleza)':
                  {
                    audioCache.play('unde esti(engleza).mp3');
                  }
                  break;

                case 'masina(italiana)':
                  {
                    audioCache.play('masina(italiana).mp3');
                  }
                  break;

                case 'masina(engleza)':
                  {
                    audioCache.play('masina(engleza).mp3');
                  }
                  break;
              }
            },
            child: Text(
              mytext[index],
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue[800], fontSize: 20.0),
            ),
          );
        },
      ),
    );
  }
}

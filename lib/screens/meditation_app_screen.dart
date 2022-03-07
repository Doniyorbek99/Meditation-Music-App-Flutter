import 'package:flutter/material.dart';
import 'package:music_app/models/item_model.dart';
import 'package:just_audio/just_audio.dart';
class MeditationAppScreen extends StatefulWidget {
  @override
  _MeditationAppScreenState createState() => _MeditationAppScreenState();
}

class _MeditationAppScreenState extends State<MeditationAppScreen> {
  final List<Item> items = [
    Item(
      audioPath: 'meditation_audios/nature.mp3',
      imagePath: "meditation_images/nature.jpg",
      name: "Nature",
    ),
    Item(
      audioPath: 'meditation_audios/oktava.mp3',
      imagePath: "meditation_images/oktava.jpg",
      name: "Oktava",
    ),
    Item(
      audioPath: 'meditation_audios/skripka.mp3',
      imagePath: "meditation_images/skripka.jpg",
      name: "Skripka",
    ),
    Item(
      audioPath: 'meditation_audios/night.mp3',
      imagePath: "meditation_images/night.jpg",
      name: "Night",
    ),
    Item(
      audioPath: 'meditation_audios/violin.mp3',
      imagePath: "meditation_images/violin.jpg",
      name: "Violin",
    ),
    Item(
      audioPath: 'meditation_audios/mosaique.mp3',
      imagePath: "meditation_images/mosaique.jpg",
      name: "Mosaique",
    ),
  ];


  final AudioPlayer audioPlayer =AudioPlayer();

  int? playingIndex;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        items[index].imagePath,
                      ),
                    )
                  ),
                  child: ListTile(
                    title: Text(items[index].name),
                    leading: IconButton(icon: Icon(Icons.play_arrow),
                    onPressed: (){
                      audioPlayer.setAsset(items[index].audioPath);
                      audioPlayer.play();
              },
                  ),
                ),
                ),);
            }),
      ),
    );
  }
}

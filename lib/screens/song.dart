import 'package:flutter/material.dart';
import 'package:music_player/widgets/neu_box.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  NeuBox(
                    width: 60,
                    height: 60,
                    child: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  Text('P L A Y L I S T'),
                  NeuBox(
                    width: 60,
                    height: 60,
                    child: Icon(Icons.menu),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              NeuBox(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('lib/assets/cover_song.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 12, 8, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Artist name here',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey[700],
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  'Song name here',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red[900],
                              size: 28,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('0:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:22'),
                ],
              ),
              const SizedBox(height: 25),
              NeuBox(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.5,
                    progressColor: Colors.blueGrey,
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 80,
                child: Row(
                  children: const [
                    Expanded(
                      child: NeuBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: NeuBox(
                          child: Icon(
                            Icons.play_arrow,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: NeuBox(
                        child: Icon(
                          Icons.skip_next,
                          size: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

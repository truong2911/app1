import 'package:flutter/material.dart';
import 'package:music/components/neu_box.dart';
import 'package:music/model/playlist_provider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // app bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // back button
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back),
                    ),

                    // titlle
                    Text("P L A Y L I S T"),

                    //menu button
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    ),
                  ],
                ),

                const SizedBox(height: 55),

                // album artwwork
                NeuBox(
                  child: Column(
                    children: [
                      // image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset("assets/imges/1.jpg"),
                      ),

                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Go Getters",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Text("Mori Calliope"),
                              ],
                            ),

                            // heart icon
                            Icon(
                              Icons.diamond_sharp,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // song duration progress
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 29.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // start time
                          Text("0:00"),

                          // shuffle icon
                          Icon(Icons.shuffle),

                          // repeat icon
                          Icon(Icons.repeat),

                          // end time
                          Text("0:00"),
                        ],
                      ),
                      Slider(
                        min: 0,
                        max: 100,
                        value: 50,
                        activeColor: const Color.fromARGB(195, 45, 235, 235),
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 13),

                // playback controls
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: NeuBox(
                          child: Icon(Icons.skip_previous),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () {},
                        child: NeuBox(
                          child: Icon(Icons.play_arrow),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: NeuBox(
                          child: Icon(Icons.skip_next),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

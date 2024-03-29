import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/provider/detail_artist_provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    player;
  }

  final TextEditingController _artistNameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _artistNameController.dispose();
  }

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Form(
                child: TextFormField(
              controller: _artistNameController,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                onPressed: () {
                  Provider.of<DetailArtistProvider>(context, listen: false)
                      .getResult(_artistNameController.text);
                },
                icon: const Icon(Icons.search),
              )),
            )),
          ),
          Consumer<DetailArtistProvider>(
            builder: (context, value, child) {
              if (value.state == ResultState.isLoading) {
                return const CircularProgressIndicator.adaptive();
              } else if (value.state == ResultState.hasData) {
                return Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: value.resultDetail?.resultCount ?? 0,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                            value.resultDetail?.results[index].trackName ??
                                "Unknown Track Name"),
                        subtitle: Text(
                            value.resultDetail?.results[index].artistName ??
                                "Unknown Artist Name"),
                        trailing: isPlaying
                            ? IconButton(
                                icon: const Icon(Icons.pause),
                                onPressed: () async {
                                  await player.stop();
                                  setState(() {
                                    isPlaying = false;
                                  });
                                },
                              )
                            : IconButton(
                                icon: const Icon(Icons.play_arrow),
                                onPressed: () async {
                                  if (value.resultDetail?.results[index]
                                          .previewUrl !=
                                      null) {
                                    await player.play(
                                      UrlSource(value.resultDetail!
                                          .results[index].previewUrl!),
                                    );
                                    setState(() {
                                      isPlaying = true;
                                    });
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text("Tidak ada preview"),
                                      ),
                                    );
                                  }
                                },
                              ),
                        leading:
                            (value.resultDetail?.results[index].artworkUrl60 ==
                                    null)
                                ? const FlutterLogo()
                                : Image.network(value
                                    .resultDetail!.results[index].artworkUrl60),
                      );
                    },
                  ),
                );
              } else if (value.state == ResultState.error) {
                return const Center(child: Text("Error"));
              } else if (value.state == ResultState.error) {
                return const Text("Error");
              } else {
                return const Center(child: Text("No Data"));
              }
            },
          ),
        ],
      ),
    );
  }
}

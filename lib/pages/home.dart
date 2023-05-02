import 'package:flutter/material.dart';
import 'package:giphy_picker/giphy_picker.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GiphyGif? _gif;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giphy Picker'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        // condition for title in screen center
        child: Center(
          child: _gif == null ? const Text('Find a gif', style: TextStyle(fontSize: 40.0),) : GiphyImage.original(gif: _gif!),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.search_outlined),
        onPressed: ()async {
          final gif = await GiphyPicker.pickGif(
            context: context,
            apiKey: 'iOIgxnxTnD5RDfKQ2fWF6YUcqsUIjY3k',
          );
        },
      ),
    );
  }
}

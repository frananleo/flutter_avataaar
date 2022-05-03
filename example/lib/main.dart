import 'package:example/assets_loader.dart';
// ignore: implementation_imports
import 'package:flutter_avataaar/src/avataaar/avataaar_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avataaar/flutter_avataaar.dart';

void main() => runApp(const AvataaarExample());

class AvataaarExample extends StatefulWidget {
  const AvataaarExample({Key? key}) : super(key: key);

  @override
  State<AvataaarExample> createState() => _AvataaarExampleState();
}

class _AvataaarExampleState extends State<AvataaarExample> {
  final String baseUrl = 'https://avataaars.io';
  late Avataaar _avatar;

  @override
  void initState() {
    super.initState();
    _avatar = Avataaar.random(baseUrl: baseUrl);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Avataaars'), centerTitle: true),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: FutureBuilder<Map<String, dynamic>>(
                    future: AssetsLoader().load(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        var data = snapshot.data!;
                        return AvataaarGenerator(
                          avataaar: _avatar,
                          onUpdateAvataaar: () => setState(() {}),
                          onTranslateKey: (p0) {
                            return data[p0] ?? 'unknown';
                          },
                        );
                      } else {
                        return CircularProgressIndicator();
                      }
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      iconSize: 48.0,
                      icon: const Icon(Icons.refresh),
                      onPressed: () => setState(() => _avatar = Avataaar.random(baseUrl: baseUrl)),
                    ),
                    Builder(
                      builder: (_) {
                        return ElevatedButton(
                          onPressed: () async {
                            try {
                              final file = await _avatar.getPngFromSvg();
                              ScaffoldMessenger.of(_).showSnackBar(
                                SnackBar(
                                  content: Text(file.path),
                                  behavior: SnackBarBehavior.floating,
                                ),
                              );
                            } on Exception catch (e) {
                              ScaffoldMessenger.of(_).showSnackBar(
                                SnackBar(
                                  content: Text(e.toString()),
                                  behavior: SnackBarBehavior.floating,
                                ),
                              );
                            }
                          },
                          child: Text('Save icon'),
                        );
                      },
                    )
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

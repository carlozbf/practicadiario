import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';


class Translator extends StatefulWidget {
  const Translator({Key? key}) : super(key: key);

  @override
  State<Translator> createState() => _TranslatorState();
}

class _TranslatorState extends State<Translator> {
  final TextEditingController _sourceTextController = TextEditingController();
  final TextEditingController _translatedTextController = TextEditingController();
  String _selectedSourceLanguage = 'en';
  String _selectedTargetLanguage = 'es';

  final List<String> _supportedLanguages = [
    'en', // English
    'es', // Spanish
    'fr', // French
    'de', // German
    'it', // Italian
    // Add more languages as needed
  ];

  void _translateText() async {
    // ignore: avoid_print
    print('algo');
    //final int probando = 0;
  //   final translator = GoogleMlKit.nlp; //GoogleMlKit.translate();
  //   final translatedText = await translator.translateText(
  //     _sourceTextController.text,
  //     sourceLanguage: _selectedSourceLanguage,
  //     targetLanguage: _selectedTargetLanguage,
  //   );
  //   _translatedTextController.text = translatedText;
   }


// late final TranslateLanguage sourceLanguage;
// late final TranslateLanguage targetLanguage;

// final onDeviceTranslator = OnDeviceTranslator(sourceLanguage: sourceLanguage, targetLanguage: targetLanguage);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Translator'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _sourceTextController,
              decoration: const InputDecoration(
                labelText: 'Source Text',
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                DropdownButton<String>(
                  value: _selectedSourceLanguage,
                  items: _supportedLanguages.map((language) {
                    return DropdownMenuItem(
                      value: language,
                      child: Text(language),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedSourceLanguage = value!;
                    });
                  },
                ),
                const SizedBox(width: 16.0),
                const Icon(Icons.arrow_forward),
                const SizedBox(width: 16.0),
                DropdownButton<String>(
                  value: _selectedTargetLanguage,
                  items: _supportedLanguages.map((language) {
                    return DropdownMenuItem(
                      value: language,
                      child: Text(language),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedTargetLanguage = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _translateText,
              child: const Text('Translate'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _translatedTextController,
              decoration: const InputDecoration(
                labelText: 'Translated Text',
              ),
              readOnly: true,
            ),
          ],
        ),
      ),
    );
  }
}

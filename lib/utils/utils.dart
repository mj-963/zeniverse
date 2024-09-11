import 'dart:convert';
import 'dart:math';
import 'package:dio/dio.dart';

import 'package:zeniverse/Nasa/sounds/sound.dart';

String getRandomVideoId() {
  final random = Random();
  final index = random.nextInt(hubbleSpaceSounds.length);
  final sound = hubbleSpaceSounds[index];
  if (sound.links.first.isMobileView) {
    getRandomVideoId();
  }
  final id = sound.links.first.href.split('be/').last;

  print('Random video: ${sound.links.first.href}\nID: $id');
  return id;
}

class Quote {
  final String? quote;
  final String? author;
  Quote({
    this.quote,
    this.author,
  });

  Map<String, dynamic> toMap() {
    return {
      'quote': quote,
      'author': author,
    };
  }

  factory Quote.fromMap(Map<String, dynamic> map) {
    return Quote(
      quote: map['quote'],
      author: map['author'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Quote.fromJson(String source) => Quote.fromMap(json.decode(source));
}

Future<Quote?> getRandomQoute() async {
  try {
    final dio = Dio();

    final response = await dio.fetch(
      RequestOptions(
        path: 'https://quotes-api-self.vercel.app/quote',
        // path: 'https://api.api-ninjas.com/v1/quotes',
        // queryParameters: {
        //   'category': 'inspirational',
        // },
        // headers: {
        //   'X-Api-Key': 'BrLG4/AhX8J3b+RgXWp2+g==u5017lyEaE2lgpyw',
        // },
      ),
    );

    if (response.statusCode == 200) {
      final Quote quote = Quote.fromMap(response.data);

      print(quote.author);
      return quote;
    }
  } catch (e, st) {
    print('$e \n $st');
  }
  return null;
}

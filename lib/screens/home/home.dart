import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeniverse/screens/cosmic_mix/cosmic_mix.dart';
import 'package:zeniverse/screens/home/widgets/custom_list_tile.dart';
import 'package:zeniverse/utils/get_day_light.dart';
import 'package:zeniverse/utils/utils.dart';
import 'widgets/custom_appbar.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  Quote? quote;

  @override
  void initState() {
    super.initState();
    getQoute();
  }

  Future<void> getQoute() async {
    quote = await getRandomQoute();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            height: size.height * 1.2,
            width: size.width,
            color: Colors.greenAccent,
            child: Stack(
              children: [
                buildQoutesArea(size),
                Positioned.fill(
                  top: 210,
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.deepPurpleAccent,
                              Colors.deepPurple,
                            ]),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                    child: Column(
                      children: [
                        CustomListTile(
                          title: 'Cosmic Mix',
                          subtitle:
                              'Explore sounds from the universe and beyond, mix and match to create your own cosmic soundscape',
                          trailingIcon: Icons.play_arrow_rounded,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CosmicMixScreen())),
                        ),
                        const CustomListTile(
                          title: 'Guided Meditations',
                          subtitle:
                              'Relax and unwind with our guided meditations, designed to help you find peace and tranquility',
                        ),
                        const CustomListTile(
                          title: 'Breathing Exercises',
                          subtitle:
                              'Take a moment to breathe and relax with our breathing exercises',
                        ),
                        const CustomListTile(
                          title: 'BedTime Stories',
                          subtitle: 'Unwind and relax with our bedtime stories',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomAppBar(size: size),
      ],
    );
  }

  Container buildQoutesArea(Size size) {
    return Container(
      height: 250,
      width: size.width,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
        image: DecorationImage(
          image: AssetImage('assets/space_images/space_2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter:
            ImageFilter.blur(sigmaX: 5, sigmaY: 5, tileMode: TileMode.clamp),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.09,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.7,
                      height: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good ${getDayLightTime().$1}, Marcus',
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (quote != null)
                            Expanded(
                              child: RichText(
                                maxLines: 10,
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: quote?.quote ?? '',
                                      style: const TextStyle(
                                        color: Colors.white70,
                                        fontSize: 10,
                                      ),
                                    ),
                                    const TextSpan(
                                        text:
                                            '\n'), // Line break between quote and author
                                    TextSpan(
                                      text: '- ${quote?.author}',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await getQoute();
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black45,
                        child: RotatedBox(
                          quarterTurns:
                              90, // Adjusted this to match the design better
                          child: Icon(
                            switch (getDayLightTime().$1) {
                              'morning' => Icons.wb_sunny,
                              'afternoon' => Icons.wb_sunny,
                              'evening' => Icons.nightlight_round,
                              String() => Icons.nightlight_round,
                            },
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    )
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

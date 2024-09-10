import 'dart:ui';

import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => FluidDialog(
                  // Set the first page of the dialog.
                  rootPage: FluidDialogPage(
                    alignment: Alignment
                        .topLeft, //Aligns the dialog to the bottom left.
                    builder: (context) => Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/space_images/space_1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      //backdropFilter:
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                            sigmaX: 5, sigmaY: 5, tileMode: TileMode.clamp),
                        child: Container(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ), // This can be any widget.
                  ),
                ),
              );
            },
          ),
          pinned: true,
          expandedHeight: 50,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text(
              'Z E N I V E R S E',
              style: TextStyle(color: Colors.white),
            ),
            background: Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.transparent),
              child: Image.asset(
                'assets/space_images/space_3.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            List.generate(5, (index) {
              return Container(
                height: 400,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.deepPurple,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

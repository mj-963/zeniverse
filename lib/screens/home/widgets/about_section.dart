import 'dart:ui';
import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/material.dart';
import 'package:zeniverse/utils/app_texts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FluidDialog(
      // Set the first page of the dialog.
      rootPage: FluidDialogPage(
        alignment: Alignment.topLeft, //Aligns the dialog to the bottom left.
        builder: (context) => Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('assets/space_images/space_2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          //backdropFilter:
          child: BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 5, sigmaY: 5, tileMode: TileMode.clamp),
            child: Container(
              clipBehavior: Clip.antiAlias,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.3),
              ),
              child: Column(
                children: [
                  const Text(
                    'Z E N I V E R S E',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Version 1.00',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      appDescription,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: WidgetStateColor.resolveWith(
                          (e) => Colors.deepPurpleAccent,
                        )),
                        child: const Text(
                          'Credits',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ), // This can be any widget.
      ),
    );
  }
}

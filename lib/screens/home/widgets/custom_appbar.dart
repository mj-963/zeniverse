import 'package:flutter/material.dart';
import 'package:zeniverse/screens/home/widgets/about_section.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 50,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/space_images/space_3.jpg',
            )),
        color: Colors.transparent,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const AboutSection(),
              );
            },
          ),
          SizedBox(
            width: size.width * 0.15,
          ),
          const Text(
            'Z E N I V E R S E',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.trailingIcon,
    this.imageAssetName,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final IconData? trailingIcon;
  final String? imageAssetName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 0,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF7F00FF), Color(0xFFE100FF)], // Gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5), // Shadow effect
          ),
        ],
        image: imageAssetName != null
            ? DecorationImage(
                image: AssetImage(imageAssetName!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(20),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22, // Increase font size
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle ?? '',
          style: TextStyle(
            color: Colors.white.withOpacity(0.7), // Slightly transparent
            fontSize: 12, // Smaller font for subtitle
          ),
        ),
        trailing: GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white.withOpacity(0.2),
            child: Icon(
              trailingIcon ?? Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

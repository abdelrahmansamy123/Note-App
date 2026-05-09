import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'lsflkasfjklsafjsak',
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.6),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 26,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May21, 2022',
              style: TextStyle(color: Colors.black.withValues(alpha: 0.6)),
            ),
          ),
        ],
      ),
    );
  }
}

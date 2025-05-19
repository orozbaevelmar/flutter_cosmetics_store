import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }

  Widget _buildABC() {
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      child: Image(image: AssetImage('fds')),
    );
  }

  Widget _buildabcd() {
    return Container(
      child: Image(
        image: NetworkImage('https//asdfa'),
      ),
    );
  }
}

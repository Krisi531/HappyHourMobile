import 'package:flutter/material.dart';

class SearchBoxHomePage extends StatelessWidget {
  const SearchBoxHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 48,
      child: TextField(
        style: const TextStyle(color: Colors.black, fontSize: 14),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: 'Search for a bar...',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search, color: Colors.grey, size: 20),
          suffixIcon: IconButton(
            icon: const Icon(Icons.mic, color: Colors.grey, size: 20),
            onPressed: () {
              print('Microphone clicked');
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  final List<String> items;
  final void Function(String)? onTap;

  const CustomList({
    super.key,
    required this.items,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: GestureDetector(
                onTap: () => onTap?.call(item),
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Light background
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

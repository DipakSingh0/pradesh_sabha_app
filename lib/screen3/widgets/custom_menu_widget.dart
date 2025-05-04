import 'package:flutter/material.dart';
import 'package:pradesh_app/common/constants.dart';

class CustomMenuWidget extends StatefulWidget {
  final List<MenuItem> menuItems;
  final List<Widget> contents;
  final Color backgroundColor;
  final Color selectedColor;
  final Color textColor;

  const CustomMenuWidget({
    super.key,
    required this.menuItems,
    required this.contents,
    this.backgroundColor = redcolor,
    this.selectedColor = lightredcolor,
    this.textColor = Colors.white,
  });
  

  @override
  State<CustomMenuWidget> createState() => _CustomMenuWidgetState();
}

class MenuItem {
  final IconData icon;
  final String label;
  final double? width;

  MenuItem({
    required this.icon,
    required this.label,
    this.width,
  });
}

class _CustomMenuWidgetState extends State<CustomMenuWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: widget.backgroundColor,
          child: Row(
            children: widget.menuItems.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              return _buildMenuItem(
                index: index,
                icon: item.icon,
                label: item.label,
                width: item.width,
              );
            }).toList(),
          ),
        ),
        Container(
          width: double.infinity,
          height: 145,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: widget.contents[_selectedIndex],
        ),
      ],
    );
  }

  Widget _buildMenuItem({
    required int index,
    required IconData icon,
    required String label,
    double? width,
  }) {
    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: Container(
        width: width ?? 55, 
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        decoration: BoxDecoration(
          color: _selectedIndex == index ? widget.selectedColor : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: widget.textColor, size: 20),
            const SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8,
                color: widget.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';

class LabeledDropdown<T> extends StatelessWidget {
  final String label;
  final T? value;
  final List<T> items;
  final String hintText;
  final ValueChanged<T?> onChanged;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final InputBorder? border;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final TextStyle? itemStyle;
  final double? dropdownItemHeight;

  const LabeledDropdown({
    super.key,
    required this.label,
    required this.value,
    required this.items,
    required this.hintText,
    required this.onChanged,
    this.height = 48, // Increased default height
    this.width = double.infinity,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    this.border = const OutlineInputBorder(),
    this.labelStyle = const TextStyle(fontWeight: FontWeight.bold),
    this.hintStyle,
    this.itemStyle,
    this.dropdownItemHeight = 48, // Height for dropdown items
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: labelStyle),
        const SizedBox(height: 6),
        SizedBox(
          height: height,
          width: double.infinity,
          child: DropdownButtonFormField<T>(
            value: value,
            hint: Text(hintText, style: hintStyle),
            items: items
                .map((item) => DropdownMenuItem<T>(
                      value: item,
                      child: SizedBox(
                        height: dropdownItemHeight,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item.toString(),
                            style: itemStyle,
                          ),
                        ),
                      ),
                    ))
                .toList(),
            onChanged: onChanged,
            decoration: InputDecoration(
              border: border,
              contentPadding: padding,
              isDense: true,
              filled: true,
              fillColor: Colors.white,
            ),
            isExpanded: true,
            style: itemStyle?.copyWith(height: 1.0), // Remove text padding
            dropdownColor: Colors.white,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 2,
          ),
        ),
      ],
    );
  }
}

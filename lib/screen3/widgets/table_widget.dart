import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  final List<TableColumn> columns;
  final List<TableRowData> rows;
  final Map<int, TableColumnWidth>? columnWidths;
  final TableBorder? border;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final double? buttonHeight;
  final EdgeInsets? cellPadding;

  const TableWidget({
    super.key,
    required this.columns,
    required this.rows,
    this.columnWidths,
    this.border,
    this.buttonColor = Colors.red,
    this.buttonTextColor = Colors.white,
    this.buttonHeight = 25,
    this.cellPadding = const EdgeInsets.all(6.0),
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: border ?? TableBorder.all(),
      columnWidths: columnWidths ?? _defaultColumnWidths(columns.length),
      children: [
        // Header row
        TableRow(
          children: columns.map((column) {
            return Padding(
              padding: cellPadding!,
              child: Text(
                column.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          }).toList(),
        ),
        // Data rows
        ...rows.map((row) {
          return TableRow(
            children: row.cells.asMap().entries.map((entry) {
              final index = entry.key;
              final cell = entry.value;

              // Check if this column should render a button
              if (columns[index].hasButton && cell is String) {
                return Padding(
                  padding: cellPadding!,
                  child: SizedBox(
                    height: buttonHeight,
                    child: ElevatedButton(
                      onPressed: row.onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        foregroundColor: buttonTextColor,
                      ),
                      child: Text(cell),
                    ),
                  ),
                );
              } else {
                return Padding(
                  padding: cellPadding!,
                  child: Text(cell.toString()),
                );
              }
            }).toList(),
          );
        }),
      ],
    );
  }

  Map<int, TableColumnWidth> _defaultColumnWidths(int columnCount) {
    return {
      for (int i = 0; i < columnCount; i++)
        i: i == columnCount - 1
            ? const FixedColumnWidth(140)
            : FlexColumnWidth(1)
    };
  }
}

class TableColumn {
  final String title;
  final bool hasButton;

  const TableColumn({
    required this.title,
    this.hasButton = false,
  });
}

class TableRowData {
  final List<dynamic> cells;
  final VoidCallback? onPressed;

  TableRowData({
    required this.cells,
    this.onPressed,
  });
}

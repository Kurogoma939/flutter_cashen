import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomTabWidget extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  const BottomTabWidget({
    required this.index,
    required this.onChangedTab,
    Key? key,
  }) : super(key: key);

  @override
  _BottomTabWidgetState createState() => _BottomTabWidgetState();
}

class _BottomTabWidgetState extends State<BottomTabWidget> {
  @override
  Widget build(BuildContext context) {
    ///真ん中のスペース用の透明なやつ
    final placeholder = Opacity(
      opacity: 0,
      child: IconButton(icon: Icon(Icons.no_cell), onPressed: null),
    );

    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabItem(
            index: 0,
            icon: Icon(FontAwesomeIcons.home),
          ),
          buildTabItem(
            index: 1,
            icon: Icon(FontAwesomeIcons.calendarAlt),
          ),
          placeholder,
          buildTabItem(
            index: 2,
            icon: Icon(FontAwesomeIcons.listAlt),
          ),
          buildTabItem(
            index: 3,
            icon: Icon(FontAwesomeIcons.cog),
          ),
        ],
      ),
    );
  }

  Widget buildTabItem({
    required int index,
    required Icon icon,
  }) {
    final isSelected = index == widget.index;

    return IconTheme(
      data: IconThemeData(
        color: isSelected ? Colors.red : Colors.black,
      ),
      child: IconButton(
        icon: icon,
        onPressed: () => widget.onChangedTab(index),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  final String nameData;
  const GridViewScreen({required this.nameData, super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  late List<String> letters;
  late List<bool> isClicked;

  @override
  void initState() {
    letters = widget.nameData.split('');
    isClicked = List.generate(widget.nameData.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          for (int i = 0; i < letters.length; i++)
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isClicked[i]) {
                    letters.removeAt(i);
                    isClicked.removeAt(i);
                  } else {
                    isClicked[i] = true;
                  }
                });
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith<Color>((states) {
                  if (isClicked[i]) {
                    return Colors.blue;
                  } else {
                    return Colors.transparent;
                  }
                }),
              ),
              child: Text(
                letters[i],
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
            ),
        ],
      ),
    );
  }
}

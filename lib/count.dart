import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int? count;
  final VoidCallback? onCountSelected;
  final Function(int, int)? oncountChange;

  const Count({
    Key? key,
    @required this.count,
    this.onCountSelected,
    @required this.oncountChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => oncountChange!(1, 2),
          icon: const Icon(Icons.add),
        ),
        ElevatedButton(
          onPressed: () => onCountSelected!(),
          child: Text('$count'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
        ),
        IconButton(
          onPressed: () => oncountChange!(-1, 2),
          icon: const Icon(Icons.remove),
        ),
      ],
    );
  }
}

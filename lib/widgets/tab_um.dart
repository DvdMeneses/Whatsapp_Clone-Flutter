import 'package:flutter/material.dart';

class TabUm extends StatelessWidget {
  const TabUm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 20, // Defina a altura desejada do SizedBox que envolve o Tab
      child: Tab(
        icon: Icon(
          Icons.groups,
        ),
      ),
    );
  }
}

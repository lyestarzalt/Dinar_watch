// widgets/switch_currency_button.dart

import 'package:flutter/material.dart';

class SwitchCurrencyButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SwitchCurrencyButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (MediaQuery.of(context).size.height * 0.15 +
              (MediaQuery.of(context).size.height * 0.3)) /
          2,
      right: 8,
      child: FloatingActionButton(
        onPressed: onPressed,
        elevation: 2,
        child: const Icon(Icons.swap_vert),
      ),
    );
  }
}

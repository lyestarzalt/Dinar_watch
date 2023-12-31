import 'package:flutter/material.dart';
import 'package:dinar_watch/widgets/error_message.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ErrorApp extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onRetry;

  const ErrorApp(
      {super.key, required this.errorMessage, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          body: Expanded(
            child: ErrorMessage(
              title: AppLocalizations.of(context)!.errormessage_title,
              message: errorMessage,
              onRetry: onRetry,
            ),
          ),
        ),
      ),
    );
  }
}

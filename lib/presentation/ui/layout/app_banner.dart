import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 32.0,
        left: 8.0,
        right: 8.0,
      ),
      child: RichText(
        text: TextSpan(
          text: 'Container',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
          children: [
            TextSpan(
              text: ' Ship',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}

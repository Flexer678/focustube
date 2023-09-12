import 'package:flutter/material.dart';
import '../data/services.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                  "${(APIService.instance.fetchSubsiptions("UC6VIAsS72ayh7qVevZZSEbw"))}")
            ],
          ),
          const Column()
        ],
      ),
    );
  }
}

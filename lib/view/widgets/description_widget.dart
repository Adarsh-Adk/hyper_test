import 'package:flutter/material.dart';

import '../core/app_constants.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.description,
    required this.hashTags,
  });

  final String description;
  final List<String> hashTags;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppConstants.defaultPadding),
      child: Column(
        children: [
          Text(
            "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: AppConstants.defaultPadding,
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(
            height: AppConstants.defaultPadding,
          ),
          Wrap(
            spacing: AppConstants.defaultPadding,
            children: hashTags
                .map((e) => Chip(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    label: Text(
                      "#$e",
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface),
                    )))
                .toList(),
          )
        ],
      ),
    );
  }
}

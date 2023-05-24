import 'package:flutter/material.dart';

import '../core/app_color_scheme.dart';
import '../core/app_constants.dart';
import '../core/assets.dart';
import 'app_padding.dart';

class ReactionWidget extends StatelessWidget {
  const ReactionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppConstants.elevation,
      child: Row(
        children: [
          const AppPadding(),
          Row(
            children: [
              const Icon(
                Icons.favorite_border_outlined,
                color: AppColorScheme.commentIconColor,
              ),
              const AppPadding(
                dividedBy: 2,
              ),
              Text(
                "5",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppColorScheme.commentIconColor),
              ),
            ],
          ),
          const AppPadding(),
          Row(
            children: [
              Image.asset(Assets.commentIconImage),
              const AppPadding(
                dividedBy: 2,
              ),
              Text(
                "5",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppColorScheme.commentIconColor),
              )
            ],
          ),
          const AppPadding(),
          const Icon(Icons.bookmark_border_outlined,
              color: AppColorScheme.commentIconColor),
          const AppPadding(),
          Image.asset(Assets.moreImage),
        ],
      ),
    );
  }
}

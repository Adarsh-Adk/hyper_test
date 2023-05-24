import 'package:flutter/material.dart';

import '../core/app_color_scheme.dart';
import '../core/app_constants.dart';
import '../core/assets.dart';
import 'app_padding.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    super.key,
    required this.commentDescription,
  });

  final String commentDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        AppConstants.defaultPadding,
      ),
      height: 400,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(Assets.profileImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Text(
                              "안녕 나 응애",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              child: Icon(
                                Icons.check_circle,
                                color: Theme.of(context).colorScheme.primary,
                                size: 20,
                              ),
                            ),
                            Text(
                              "1일전",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                commentDescription,
                                textAlign: TextAlign.justify,
                              ),
                              const AppPadding(),
                              Row(
                                children: [
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
                                            ?.copyWith(
                                                color: AppColorScheme
                                                    .commentIconColor),
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
                                            ?.copyWith(
                                                color: AppColorScheme
                                                    .commentIconColor),
                                      )
                                    ],
                                  ),
                                  const AppPadding(),
                                ],
                              ),
                              const AppPadding(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CircleAvatar(
                                        backgroundImage:
                                            AssetImage(Assets.commentUser),
                                      ),
                                      SizedBox(
                                        width: 200,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: [
                                                const AppPadding(
                                                  dividedBy: 2,
                                                ),
                                                Text(
                                                  "ㅇㅅㅇ",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleLarge
                                                      ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w700),
                                                ),
                                                const AppPadding(
                                                  dividedBy: 2,
                                                ),
                                                Text(
                                                  "1일전",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelLarge
                                                      ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .onSurface),
                                                )
                                              ],
                                            ),
                                            const AppPadding(),
                                            const Row(
                                              children: [
                                                AppPadding(
                                                  dividedBy: 2,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      "오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다"),
                                                ),
                                              ],
                                            ),
                                            const AppPadding(),
                                            Row(
                                              children: [
                                                const AppPadding(
                                                  dividedBy: 2,
                                                ),
                                                const Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: AppColorScheme
                                                      .commentIconColor,
                                                ),
                                                const AppPadding(
                                                  dividedBy: 2,
                                                ),
                                                Text(
                                                  "5",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge
                                                      ?.copyWith(
                                                          color: AppColorScheme
                                                              .commentIconColor),
                                                ),
                                              ],
                                            ),
                                            const AppPadding(),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Image.asset(Assets.moreImage)
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset(Assets.moreImage)
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../core/app_color_scheme.dart';
import '../core/app_constants.dart';
import '../widgets/comment_widget.dart';
import '../widgets/description_widget.dart';
import '../widgets/images_widget.dart';
import '../widgets/profile_header_widget.dart';
import '../widgets/reaction_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const description =
      """지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어?\n

후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아???\n
     
올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!""";

  static const commentDescription = """
어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그
 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!""";

  List<String> hashTags = [
    "2023",
    "TODAYISMONDAY",
    "TOP",
    "POPS!",
    "WOW",
    "ROW"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 30,
        ),
        centerTitle: true,
        title: Text(
          "자유톡",
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: Theme.of(context).colorScheme.primaryContainer),
        ),
        actions: const [
          Icon(
            Icons.notifications_none_outlined,
            size: 35,
          )
        ],
      ),
      body: ListView(
        children: [
          const ProfileHeader(),
          DescriptionWidget(description: description, hashTags: hashTags),
          const ImagesWidgets(),
          const ReactionWidget(),
          const CommentWidget(commentDescription: commentDescription)
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.all(AppConstants.defaultPadding / 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppConstants.defaultPadding),
              child: Icon(
                Icons.image,
                color: AppColorScheme.commentIconColor,
              ),
            ),
            Expanded(
              child: Text(
                "댓글을 남겨주세요.",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColorScheme.commentIconColor,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppConstants.defaultPadding),
              child: Text(
                "등록",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColorScheme.commentIconColor,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

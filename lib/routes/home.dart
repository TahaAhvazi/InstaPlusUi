import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/post.dart';
import 'package:instagram_clone/widgets/searchbox.dart';
import 'package:instagram_clone/widgets/storylistview.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            height: 90.0,
            width: double.infinity,
            child: StoryListView(),
          ),
        ),
        SearchBox(),
        PostWidget(),
      ],
    );
  }
}

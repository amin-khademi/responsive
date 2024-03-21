import 'package:flutter/material.dart';
import 'package:responsive__chat/helpers/constants.dart';
import 'package:responsive__chat/pages/user/user_detail.dart';
import 'package:responsive__chat/pages/user/user_list.dart';

class SplitScreen extends StatelessWidget {
  const SplitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        //list
        SizedBox(
          width: Sizes.listWidth,
          child: UserList(),
        ),
        // divider
        VerticalDivider(
          width: Sizes.verticalDividerWidth,
        ),
        // details
        Expanded(
          child: Center(
            child: UserDetail(),
          ),
        ),
      ],
    );
  }
}

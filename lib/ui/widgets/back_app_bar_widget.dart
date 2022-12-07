import 'package:flutter/material.dart';

import '../../constant/const.dart';

class BackAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const BackAppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(Icons.arrow_back),
        color: Colors.black,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 17),
      ),
      backgroundColor: kWhiteColor,
      elevation: 2,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

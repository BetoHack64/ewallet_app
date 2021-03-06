import 'package:flutter/material.dart';

import '../../../size_config.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultWidth * 1,
          vertical: SizeConfig.defaultHeight * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Minhas Carteiras",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white, ),
          ),
          CircleAvatar(
            radius: SizeConfig.defaultHeight * 3.5,
            child: Image.asset("assets/avatar.png"),
          )
        ],
      ),
    );
  }
}

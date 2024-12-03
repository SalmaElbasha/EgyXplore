import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onBackTap;
  final String? skipText;
  final VoidCallback? onSkipTap;
  final Color backGround;
  const CustomBackButton({Key? key, required this.onBackTap, this.skipText, this.onSkipTap, this.backGround=const Color(0xFFC3AC8E)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor:backGround,
      centerTitle: true,
      toolbarHeight: 100.0,
      leading: GestureDetector(
        onTap: onBackTap,
        child: Container(
          margin: const EdgeInsets.only(left: 10, top: 15),
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xff8B5843),
              width: 2.7,
            ),
          ),
          child: const CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
      ),
      actions: skipText != null
          ? [
        GestureDetector(
          onTap: onSkipTap,
          child: Padding(
            padding: const EdgeInsets.only(right: 15, top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  skipText!,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: 30,
                  child: const Icon(
                    Icons.arrow_forward_rounded,
                    size: 25,
                    color: Color(0xff794B39),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}

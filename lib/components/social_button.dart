import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  final String title;
  final String iconString;
  final double topPadding;
  const SocialButton({
    super.key,
    required this.title,
    required this.iconString,
    required this.topPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            side: const BorderSide(
              color: Color(0xFFDFDFDF),
              width: 1,
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/$iconString.svg',
                width: 16,
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Text(
                  'Sign up with $title',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

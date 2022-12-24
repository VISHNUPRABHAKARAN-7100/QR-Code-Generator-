import 'package:flutter/cupertino.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(41, 191, 18, 1),
                borderRadius: BorderRadius.circular(6),
              ),
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(41, 191, 18, 1),
                borderRadius: BorderRadius.circular(6),
              ),
              width: 30,
              height: 30,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(41, 191, 18, 1),
                  borderRadius: BorderRadius.circular(6)),
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(41, 191, 18, 1),
                  borderRadius: BorderRadius.circular(6)),
              width: 30,
              height: 30,
            )
          ],
        ),
      ],
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fcps_pearls/main.dart';

class AuthErrorUI extends StatelessWidget {
  const AuthErrorUI({
    Key? key,
    required this.error,
    required this.stackTrace,
  }) : super(key: key);
  final String error;
  final String stackTrace;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          'Errors happened'.text(scale: 2).pad(),
          // '${loginStateRM().error}'.text(scale: 2).pad(),
          ElevatedButton(
            onPressed: () {},
            child: 'Try Again'.text(scale: 2).pad(),
          ).pad(),
        ],
      ),
    );
  }
}

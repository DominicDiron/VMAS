import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  late Image _image;

  @override
  void initState() {
    super.initState();
    _image = Image.asset('assets/get_started.png');
    // To ensure the image is loaded before the build method
    _image.image.resolve(const ImageConfiguration()).addListener(
      ImageStreamListener(
        (ImageInfo info, bool synchronousCall) {
          if (mounted) {
            setState(() {});
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xFFFFB109),
              Color(0xFFFF0909),
            ])),
        child: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: content());
          } else {
            return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: content());
          }
        }),
      ),
    );
  }

  List<Widget> content() {
    return [
      Center(
        // child: Image.asset('assets/get_started.png'),
      ),
      ElevatedButton(
          onPressed: () {},
          // style: ButtonStyle(
          //     backgroundColor:
          //         WidgetStateProperty.all<Color>(Colors.purple.shade500)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple.shade500
          ),
          child: Text(AppLocalizations. of (context)!.getStarted,
            style: const TextStyle(color: Colors.white),
          ))
    ];
  }
}

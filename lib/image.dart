import 'package:flutter/material.dart';

///File
///Key => Form

Widget imageAssetsAndNetwork() => Image.asset(
      "app_image/shirt1.png",
      // scale: 1,
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      // fit: BoxFit.fitWidth,

      frameBuilder: (ctx, image, count, isOk) {
        print(count); //1
        print(isOk);

        if (count != 0) return const LinearProgressIndicator();

        return image;
      },
      // loadingBuilder: (ctx, image, progress) {
      //   if (progress != null) return const CircularProgressIndicator();
      //   return image;
      // },
      errorBuilder: (ctx, success, stacktrace) {
        return const Icon(Icons.error);
      },
    );

Widget image() => Image(
      image: const AssetImage(
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png"),
      loadingBuilder: (context, child, loadingProgress) =>
          loadingProgress == null ? child : const CircularProgressIndicator(),
    );

Widget containerWidgetImage() => Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage("app_image/shirt.png"),
          onError: (exception, stackTrace) {
            print(exception);
          },
        ),
        color: Colors.green,
        shape: BoxShape.circle,
      ),
    );

Widget circleAvatar() => const CircleAvatar(
      backgroundColor: Colors.green,
      backgroundImage: AssetImage('app_image/shirt.png'),
      minRadius: 40,
      maxRadius: 50,
      child: Text("hello"),
    );

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: circleAvatar(),
      ),
    );
  }
}

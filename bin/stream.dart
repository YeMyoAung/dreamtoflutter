import 'dart:async';

final StreamController controller = StreamController.broadcast();
void main() {
  ///Stream => StreamController
  ///ပုံမှန်ဆိုရင် တစ်ယောက်ပဲလက်ခံတယ်
  ///တစ်ကယ်လို့ တစ်ယောက်ထက်ပိုချင်တယ်ဆိုရင် StreamController()ဆိုပြီး invokeလုပ်မဲ့အစား
  ///StreamController.broadcast()ဆိုပြီး invokeလုပ်ရမယ်
  ///ဝင်ပေါက်   => Sink  ->တန်ဖိုးထည့်
  ///ထွက်ပေါက်  => Stream ->တန်ဖိုး

  // controller.stream.listen((result) {
  //   print("First Listener $result");
  // });
  // Future.delayed(Duration(seconds: 1), () {
  //   controller.stream.listen((result) {
  //     print("2 Listener $result");
  //   });
  // });
  // Future.delayed(Duration(seconds: 2), () {
  //   controller.stream.listen((result) {
  //     print("3 Listener $result");
  //   });
  // });
  // Future.delayed(Duration(seconds: 6), () {
  //   controller.stream.listen((result) {
  //     print("4 Listener $result");
  //   });
  // });

  addToStream();

  ///Data Listen
  hello().listen((event) {
    print(event);
  });
}

///async    => Future
///async*   => Stream
///async*ပါတာနဲ့ returnပေးလို့မရတော့ဘူး
///mrtv4     => yield = လွှင့်
///mrtv4 => skynetကဘောလုံးပွဲကိုပြန်ပြချင်တယ် => yield*
Stream hello() async* {
  ///yield =လွှင့်
  ///yield* = ပြန်ပြ
  // yield "fsadf,safdks";
  // yield* controller.stream;
  // yield* Future.value("fdjasl").asStream();
  // return controller.stream;
}

int i = 0;

void addToStream() {
  Future.delayed(Duration(seconds: 1), () {
    controller.sink.add(i); //Data Add
    i++;
    addToStream();
  });
}

import 'package:flutter/material.dart';
import 'package:mobx_mp3/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mp3 player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
    );
  }
}

// import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:mobx_mp3/view_model/page_manager.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late final PageManager _pageManager;

//   @override
//   void initState() {
//     super.initState();
//     _pageManager = PageManager();
//   }

//   @override
//   void dispose() {
//     _pageManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             children: [
//               const Spacer(),
//               ValueListenableBuilder<ProgressBarState>(
//                 valueListenable: _pageManager.progressNotifier,
//                 builder: (_, value, __) {
//                   return ProgressBar(
//                     progress: value.current,
//                     buffered: value.buffered,
//                     total: value.total,
//                     onSeek: _pageManager.seek,
//                   );
//                 },
//               ),
//               ValueListenableBuilder<ButtonState>(
//                 valueListenable: _pageManager.buttonNotifier,
//                 builder: (_, value, __) {
//                   switch (value) {
//                     case ButtonState.loading:
//                       return Container(
//                         margin: const EdgeInsets.all(8.0),
//                         width: 32.0,
//                         height: 32.0,
//                         child: const CircularProgressIndicator(),
//                       );
//                     case ButtonState.paused:
//                       return IconButton(
//                         icon: const Icon(Icons.play_arrow),
//                         iconSize: 32.0,
//                         onPressed: _pageManager.play,
//                       );
//                     case ButtonState.playing:
//                       return IconButton(
//                         icon: const Icon(Icons.pause),
//                         iconSize: 32.0,
//                         onPressed: _pageManager.pause,
//                       );
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

import 'package:flutter_application_1/Home/footer.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int milliseconds = 0;
  final laps = <int>[];
  Timer? timer;
  bool _isTicking = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Stop Watch"),
      ),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Expanded(child: _buildCounter(context)),
          Expanded
          (
            
            child: buildDisplay2()),
          
        ],
      ),
      bottomNavigationBar:BottomAppBar(child: Footer(),color: Color.fromARGB(255, 88, 185, 209),),
    );
  }

  Column _buildCounter(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: CustomPaint(
            painter: CirclePainter(),
            child: SizedBox(
              height: 200,
              width: 200,
              child: Center(
                child: Text(
                  _millisecondsToText(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        _buildControl(),
      ],
    );
  }

  Row _buildControl() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: _isTicking ? null : _startTimer,
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
            backgroundColor: WidgetStateProperty.all<Color>(Colors.amber),
          ),
          child: const Text("Start"),
        ),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: _isTicking ? _stopTimer : null,
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
            backgroundColor: WidgetStateProperty.all<Color>(Colors.blueAccent),
          ),
          child: const Text("Stop"),
        ),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: _isTicking ? _lap : null,
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
            backgroundColor: WidgetStateProperty.all<Color>(Colors.purpleAccent),
          ),
          child: const Text("Lap"),
        ),
      ],
      
    );
  }

  void _lap() {
    setState(() {
      laps.add(milliseconds);
    });
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 10), _onTick);
    setState(() {
      _isTicking = true;
    });
  }

  void _stopTimer() {
    timer?.cancel();
    setState(() {
      _isTicking = false;
    });
  }

  void _onTick(Timer timer) {
    if (mounted) {
      setState(() {
        milliseconds += 10;
      });
    }
  }

  String _millisecondsToText() {
    final int minutes = milliseconds ~/ 60000;
    final int seconds = (milliseconds % 60000) ~/ 1000;
    final int hundredths = (milliseconds % 1000) ~/ 10;
    return '$minutes:${seconds.toString().padLeft(2, '0')}:${hundredths.toString().padLeft(2, '0')}';
  }

  Widget buildDisplay2() {
    return ListView.builder(
      
      itemCount: laps.length,
      itemBuilder: (context, index) {
        final millis = laps[index];
        return SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  (index + 1).toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  _millisecondsToTextWithMinutes(millis),
                  style: const TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String _millisecondsToTextWithMinutes(int ms) {
    final int minutes = ms ~/ 60000;
    final int seconds = (ms % 60000) ~/ 1000;
    final int hundredths = (ms % 1000) ~/ 10;
    return '$minutes:${seconds.toString().padLeft(2, '0')}:${hundredths.toString().padLeft(2, '0')}';
    
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color.fromARGB(255, 69, 192, 208)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

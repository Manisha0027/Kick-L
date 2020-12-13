import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math';
class Clock_View extends StatefulWidget {
  final double size;

  const Clock_View({Key key, this.size}) : super(key: key); 
  @override
  _Clock_ViewState createState() => _Clock_ViewState();
}

class _Clock_ViewState extends State<Clock_View> {
  @override void initState(){
    Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {
        
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size,
      height: widget.size,
      child: Transform.rotate(
        angle: -pi/2,
              child: CustomPaint(
            painter: ClockPainter(),
        ),
      ),
      
    );
  }
}
class ClockPainter extends CustomPainter{
  var dateTime = DateTime.now();
  @override
  void paint(Canvas canvas,Size size){
    var centerX = size.width /2;
    var centerY = size.height/2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX,centerY);
    var fillBrush = Paint()
    ..color = Colors.teal[900];
     
     var outLineBrush = Paint()
    ..color = Color(0xFFEAECFF)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 10;

    var centerBrush = Paint() ..color = Color(0xFFEAECFF);

    
    
     var secHandBrush = Paint()
    ..color = Colors.orange[300]
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 8; 

    var minHandBrush = Paint()
    ..shader = RadialGradient(colors: [Color(0xFF748EF6),Colors.blue]).createShader(Rect.fromCircle(center: center,radius:radius)) 
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10; 

    var hourHandBrush = Paint()
    ..shader = RadialGradient(colors: [Color(0xFFEA74AB),Color(0XFFC279FB)]).createShader(Rect.fromCircle(center: center,radius:radius)) 
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 16; 

    canvas.drawCircle(center, radius , fillBrush);
     canvas.drawCircle(center, radius , outLineBrush);

      var hourHandX = centerX + 60*cos((dateTime.hour*30+dateTime.minute*0.5) *pi/180);
     var hourHandY = centerY +60* sin((dateTime.hour*30+dateTime.minute*0.5)* pi/180);
    canvas.drawLine(center,Offset(hourHandX,hourHandY), hourHandBrush);

     
    var minHandX = centerX + 80*cos(dateTime.minute * 6*pi/180);
     var minHandY = centerY +80* sin(dateTime.minute * 6* pi/180);
    canvas.drawLine(center,Offset(minHandX,minHandY), minHandBrush);

    var secHandX = centerX + 80*cos(dateTime.second * 6 *pi/180);
     var secHandY = centerY +80* sin(dateTime.second * 6  * pi/180);
    canvas.drawLine(center,Offset(secHandX,secHandY), secHandBrush);
   
     canvas.drawCircle(center, 15, centerBrush);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black87,
            ),
            onPressed: () {},
          ),
        ),
        body: Scaffold(
          backgroundColor: Colors.white10,
          bottomNavigationBar: Stack(
            children: [
              Positioned(
                bottom: 82,
                right: 92,
                child: IconButton(
                  onPressed: () {    },
                  icon: const Icon(
                    Icons.add_box,
                    color: Colors.black87,
                    size: 77,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: SizedBox(
                  width: size.width,
                  height: 80,
                  child: Stack(
                    children: [
                      CustomPaint(
                        size: Size(size.width, 80),
                        painter: RPSCustomPainter(),
                      ),
                      SizedBox(
                        width: size.width,
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(onPressed: () {}, icon: const Icon(Icons.home_rounded),),
                            IconButton(onPressed: (){}, icon: const Text( "\u{20B9}", style: TextStyle(
                              fontSize: 24,
                              color:Colors.black,
                            ),)),
                            IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle_outlined)),
                            ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
        )
        );
  }
}

Widget promoCard(image) {
  return AspectRatio(
    aspectRatio: 2 / 3,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(20),
        // image: AssetImage('assets/images/one.jpg')
      ),
    ),
  );
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(size.width*0.7500000,0);
    path0.lineTo(size.width*0.7500000,size.height*0.2500000);
    path0.quadraticBezierTo(size.width*0.7515625,size.height*0.3600000,size.width*0.7812500,size.height*0.3550000);
    path0.cubicTo(size.width*0.7968750,size.height*0.3550000,size.width*0.8281250,size.height*0.3550000,size.width*0.8437500,size.height*0.3550000);
    path0.quadraticBezierTo(size.width*0.8750000,size.height*0.3475000,size.width*0.8750000,size.height*0.2500000);
    path0.lineTo(size.width*0.8750000,0);
    path0.lineTo(size.width,0);
    path0.lineTo(size.width,size.height);
    path0.lineTo(0,size.height);
    path0.lineTo(0,0);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}



class BNBCustomePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 50);
    path.quadraticBezierTo(size.width * .0, 0, size.width * .0, 0);
    path.quadraticBezierTo(size.width * .80, 0, size.width * .40, 0);
    path.arcToPoint(Offset(size.width * .6, 0), radius: const Radius.circular(10.0), clockwise: false);

    path.quadraticBezierTo(size.width * .60, 0, size.width * .6, 0);
    path.quadraticBezierTo(size.width * .80, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black, 5, true);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

//
// Path path = Path();
// path.moveTo(0, 20); // Start
// path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
// path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
// path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(20.0), clockwise: false);
// path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
// path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
// path.lineTo(size.width, size.height);
// path.lineTo(0, size.height);
// path.lineTo(0, 20);
// canvas.drawShadow(path, Colors.black, 5, true);
// canvas.drawPath(path, paint);
//

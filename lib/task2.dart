import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomeScreen(),
  ));
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality( // لدعم اللغة العربية
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        body: Stack(
          children: [
            // أشكال ديكورية
            Positioned(
              top: 60,
              left: -60,
              child: DecorativeShape(
                width: 180,
                height: 220,
                color: Color(0xFF4DB6E3),
              ),
            ),
            Positioned(
              top: 0,
              right: -50,
              child: DecorativeShape(
                width: 150,
                height: 200,
                color: Color(0xFFF26478),
              ),
            ),
            Positioned(
              top: 40,
              right: 80,
              child: CircleAvatar(
                radius: 8,
                backgroundColor: Color(0xFF3E7DD1),
              ),
            ),
            Positioned(
              top: 100,
              left: 60,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Color(0xFFFDDC88),
              ),
            ),
            Positioned(
              top: 0,
              left: 100,
              child: DecorativeShape(
                width: 180,
                height: 100,
                color: Color(0xFFFDDC88),
              ),
            ),

            // المحتوى الرئيسي
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 2),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'دعمٌ وتمكينٌ لمستقبلٍ أفضل لفئاتنا الخاصة',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFFEA4C70),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Image.asset(
                  'asset\a2.jpg', // تأكدي من الاسم الصحيح
                  height: 280,
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // إضافة حدث الضغط هنا
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEA4C70),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'دعنا نبدأ',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// ويدجت للشكل التجريدي
class DecorativeShape extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const DecorativeShape({
    required this.width,
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}

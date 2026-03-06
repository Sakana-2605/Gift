import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        backgroundColor: Color(0xFFFFF0F5), // Màu hồng pastel nhẹ
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Chúc 8/3 Vui Vẻ!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              SizedBox(height: 20),
              // Hiển thị linh vật 3D
              SizedBox(
                height: 400,
                child: O3D(
                  src: 'assets/images/gift.png', // Đảm bảo trùng tên file
                  autoPlay: true,
                  autoRotate: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
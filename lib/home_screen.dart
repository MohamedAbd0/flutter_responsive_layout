import 'package:flutter/material.dart';
import 'package:flutter_responsive_layout/responsive_layout.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Design')),
      body: const ResponsiveLayout(
        mobileLayout: MobileLayout(),
        tabletLayout: TabletLayout(),
        desktopLayout: DesktopLayout(),
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5.sh,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Mobile Layout',
          style: TextStyle(fontSize: 16.sp),
        ),
      ),
    );
  }
}

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.4.sh,
      color: Colors.green,
      child: Center(
        child: Text(
          'Tablet Layout',
          style: TextStyle(fontSize: 20.sp),
        ),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.3.sh,
      color: Colors.red,
      child: Center(
        child: Text(
          'Desktop Layout',
          style: TextStyle(fontSize: 24.sp),
        ),
      ),
    );
  }
}

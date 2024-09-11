import 'package:flutter/material.dart';
import 'package:flutter_responsive_layout/home_screen.dart';
import 'package:flutter_responsive_layout/responsive_layout.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        // Define design sizes based on screen width
        Size designSize;
        if (ResponsiveLayout.isMobile(context)) {
          // Mobile
          designSize = const Size(375, 812); // Example design size for mobile
        } else if (ResponsiveLayout.isTablet(context)) {
          // Tablet
          designSize = const Size(768, 1024); // Example design size for tablet
        } else {
          // Desktop
          designSize =
              const Size(1440, 1024); // Example design size for desktop
        }

        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true,
          fontSizeResolver: (fontSize, instance) {
            /// to update the size
            /// .sp = fontSize * (screenWidth / uiSizeWidth)
            final double uiSizeWidth = designSize.width;

            const double contentSectionMaxSize =
                1680; // Example screen size for 22 inches

            final double screenWidth =
                instance.screenWidth > contentSectionMaxSize
                    ? contentSectionMaxSize
                    : instance.screenWidth;

            return fontSize.toDouble() * (screenWidth / uiSizeWidth);
          },
          builder: (context, child) {
            return const MaterialApp(
              home: HomeScreen(),
            );
          },
        );
      },
    );
  }
}

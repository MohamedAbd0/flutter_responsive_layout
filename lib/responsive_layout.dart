import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget desktopLayout;
  final Widget tabletLayout;
  const ResponsiveLayout({
    super.key,
    required this.mobileLayout,
    required this.desktopLayout,
    required this.tabletLayout,
  });

  // screen sizes
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1000;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1000;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1680, // Example screen size for 22 inches
          maxHeight: double.infinity,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (isMobile(context)) {
              return mobileLayout;
            } else if (isTablet(context)) {
              return tabletLayout;
            } else {
              return desktopLayout;
            }
          },
        ),
      ),
    );
  }
}

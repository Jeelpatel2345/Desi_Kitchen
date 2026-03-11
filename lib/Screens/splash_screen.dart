import 'package:flutter/material.dart';
import 'dart:async';
import 'package:video_player/video_player.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();

    /// Video setup
    _videoController =
    VideoPlayerController.networkUrl(
      Uri.parse("https://res.cloudinary.com/dkay8rouh/video/upload/v1773153385/splash_dfc7ps.mp4"),
    )
      ..initialize().then((_) {
        setState(() {});
        _videoController.play();
      });

    /// Fade animation
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _animationController.forward();

    _navigateToLogin();
  }

  void _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 4));

    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange.shade700, Colors.orange.shade400],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// Video Logo
            FadeTransition(
              opacity: _fadeAnimation,
              child: _videoController.value.isInitialized
                  ? Container(
                width: screenWidth * 0.39,
                height: screenWidth * 0.39,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 25,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: _videoController.value.size.width,
                      height: _videoController.value.size.height,
                      child: VideoPlayer(_videoController),
                    ),
                  ),
                ),
              )
                  : const CircularProgressIndicator(),
            ),

            SizedBox(height: screenHeight * 0.04),

            /// App Name
            FadeTransition(
              opacity: _fadeAnimation,
              child: Text(
                'Desi Kitchen',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.1,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.015),

            /// Subtitle
            FadeTransition(
              opacity: _fadeAnimation,
              child: Text(
                'Delicious food at your doorstep',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: screenWidth * 0.042,
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.08),

            /// Loading
            FadeTransition(
              opacity: _fadeAnimation,
              child: SizedBox(
                width: screenWidth * 0.08,
                height: screenWidth * 0.08,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white.withOpacity(0.8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
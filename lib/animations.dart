import 'package:flutter/material.dart';

class BounceOnTap extends StatefulWidget {
  final Image asset; // Path to the image
  final Duration duration; // Optional: Duration of the bounce animation
  final double scale; // Optional: Scale factor for the bounce

  const BounceOnTap({
    super.key,
    required this.asset,
    this.duration = const Duration(milliseconds: 150),
    this.scale = 1.03,
  });

  @override
  _BounceOnTapState createState() => _BounceOnTapState();
}

class _BounceOnTapState extends State<BounceOnTap>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    // Define the animation with Tween
    _animation = Tween<double>(begin: 1.0, end: widget.scale)
        .chain(CurveTween(curve: Curves.elasticOut))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when not needed
    super.dispose();
  }

  void _handleTap() {
    // Start the bounce animation
    _controller.forward().then((_) => _controller.reverse());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap, // Handle the tap to trigger the bounce
      child: ScaleTransition(
        scale: _animation,
        child: widget.asset,
      ),
    );
  }
}

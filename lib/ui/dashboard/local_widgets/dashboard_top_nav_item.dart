import 'package:flutter/material.dart';
import 'package:tm_reklama/ui/theme/app_animation.dart';
import 'package:tm_reklama/ui/theme/app_colors.dart';
import 'package:tm_reklama/ui/theme/app_dimension.dart';

class DashboardTopNavItem extends StatefulWidget {
  final int value;
  final int groupValue;
  final IconData iconData;
  final VoidCallback? onTapped;
  final String? tooltip;

  const DashboardTopNavItem(
      {Key? key,
      required this.value,
      required this.groupValue,
      required this.iconData,
      this.tooltip,
      this.onTapped})
      : super(key: key);

  @override
  State<DashboardTopNavItem> createState() => _DashboardTopNavItemState();
}

class _DashboardTopNavItemState extends State<DashboardTopNavItem>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _curveAnimation;
  late final Animation<Color?> _colorAnimation;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: AppAnimation.durationMedium),
      vsync: this,
    );
    _curveAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 1.2).animate(_curveAnimation);

    _colorAnimation =
        ColorTween(begin: AppColors.lightGreyColor, end: Colors.white)
            .animate(_curveAnimation);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: IconButton(
            splashRadius: Material.defaultSplashRadius * 2 / 3,
            iconSize: AppDimension.iconSizeSmall,
            onPressed: widget.onTapped,
            tooltip: widget.tooltip,
            icon: Icon(
              widget.iconData,
              color: _colorAnimation.value,
            ),
          ),
        );
      },
    );
  }

  @override
  void didUpdateWidget(covariant DashboardTopNavItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.groupValue != oldWidget.groupValue) {
      if (widget.groupValue == widget.value) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

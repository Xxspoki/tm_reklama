import 'package:flutter/material.dart';
import 'package:tm_reklama/ui/theme/app_animation.dart';
import 'package:tm_reklama/ui/theme/app_colors.dart';
import 'package:tm_reklama/ui/theme/app_dimension.dart';

class DashboardBottomNavItem extends StatefulWidget {
  final int value;
  final int groupValue;
  final IconData iconData;
  final VoidCallback? onTapped;
  final String? tooltip;

  const DashboardBottomNavItem(
      {Key? key,
      required this.value,
      required this.groupValue,
      required this.iconData,
      this.onTapped,
      this.tooltip})
      : super(key: key);

  @override
  State<DashboardBottomNavItem> createState() => _DashboardBottomNavItemState();
}

class _DashboardBottomNavItemState extends State<DashboardBottomNavItem>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _curveAnimation;
  late final Animation<Color?> _colorAnimation;

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

    _colorAnimation =
        ColorTween(begin: AppColors.darkerGreyColor, end: AppColors.amberColor)
            .animate(_curveAnimation);

    if (widget.value == widget.groupValue) {
      _controller.forward();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return IconButton(
          splashRadius: Material.defaultSplashRadius * 2 / 3,
          iconSize: AppDimension.iconSizeMedium / 1.2,
          onPressed: widget.onTapped,
          tooltip: widget.tooltip,
          icon: Stack(
            children: [
              Icon(
                widget.iconData,
                color: _colorAnimation.value,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void didUpdateWidget(covariant DashboardBottomNavItem oldWidget) {
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

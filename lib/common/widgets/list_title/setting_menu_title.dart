import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/colors.dart';

class KSettingMenuTitle extends StatelessWidget {
  final IconData? icon;
  final Widget? trailing;
  final String subTitle;
  final String title;
  final VoidCallback? onTap;

  const KSettingMenuTitle({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.trailing,
     this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: KColors.primary),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}

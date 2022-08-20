import 'package:flutter/material.dart';

import '../presentation/color_manager__presentation.dart';
import '../presentation/values_manager__presentation.dart';

class AppBarComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onPressed;
  const AppBarComponent(
      {required this.title,
      required this.subtitle,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 100,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            'asset/img/jonas-kakaroto-mjRwhvqEC0U-unsplash.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.headline5,
      ),
      trailing: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: ColorManager.colorPrimaryLighter,
          ),
          child: IconButton(
            splashColor: Colors.transparent,
            color: ColorManager.colorPrimaryLight,
            icon: const Icon(
              Icons.grid_view,
              color: Colors.white,
            ),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}

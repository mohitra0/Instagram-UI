import 'package:flutter/material.dart';

import 'package:instagram_ui/view/loading.dart';

class Loading extends StatelessWidget {
  const Loading();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      ),
      color: Colors.transparent,
    );
  }
}

import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
                Icons.ondemand_video,
              size: 250,
              color: Colors.cyan,
            ),
            Text('Pagina Home')
          ],
        ),
      ),
    );
  }
}

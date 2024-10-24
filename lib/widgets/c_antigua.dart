import 'package:fitness_dashboard_ui/const/constant.dart';
import 'package:fitness_dashboard_ui/data/line_chart_data.dart';
import 'package:fitness_dashboard_ui/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';

import 'package:another_carousel_pro/another_carousel_pro.dart';

class CasasAntiguasCard extends StatelessWidget {
  const CasasAntiguasCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Casas antiguas",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          AspectRatio(
              aspectRatio: 16 / 12,
              child: AnotherCarousel(
                showIndicator: true,
                autoplay: false,
                images: [
                  ExactAssetImage("assets/images/valuo/image1.jpg"),
                  ExactAssetImage("assets/images/valuo/image2.jpg"),
                  ExactAssetImage("assets/images/valuo/image3.jpg")
                ],
              ))
        ],
      ),
    );
  }
}

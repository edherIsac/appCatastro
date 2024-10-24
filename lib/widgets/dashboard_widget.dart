import 'package:fitness_dashboard_ui/util/responsive.dart';
import 'package:fitness_dashboard_ui/widgets/card-categoria-valuo.dart';
import 'package:fitness_dashboard_ui/widgets/header_widget.dart';
import 'package:fitness_dashboard_ui/widgets/summary_widget.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 18),
            const HeaderWidget(),
            const SizedBox(height: 18),
            CardClasificacionContruccion(
              title: "Antigua",
              imageList: [
                ExactAssetImage("assets/images/valuo/image1.jpg"),
                ExactAssetImage("assets/images/valuo/image2.jpg"),
                ExactAssetImage("assets/images/valuo/image3.jpg")
              ],
              onTap: () {
                print("log: Antigua");
              },
            ),

            const SizedBox(height: 18),

            CardClasificacionContruccion(
              title: "Antigua",
              imageList: [
                ExactAssetImage("assets/images/valuo/image6.jpg"),
                ExactAssetImage("assets/images/valuo/image7.jpg"),
                ExactAssetImage("assets/images/valuo/image9.jpg")
              ],
              onTap: () {
                print("log: Moderno");
              },
            ),

            // const BarGraphCard(),
            const SizedBox(height: 18),
            if (Responsive.isTablet(context)) const SummaryWidget(),
          ],
        ),
      ),
    );
  }
}

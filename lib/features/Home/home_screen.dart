import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';
import 'package:weather_app/core/theme/text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cairo.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(35),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/search');
                  },
                  icon: Icon(Icons.search, color: Colors.black, size: 35),
                ),
              ],
            ),
            Text('Cairo', style: AppTextStyles.mediumTitle),
            Gap(45),
            Text('38°', style: AppTextStyles.temperature),
            Text('clear  38° / 25°', style: AppTextStyles.weatherDetails),
            LiquidGlassLayer(
              settings: LiquidGlassSettings(
                visibility: 0.75,
                thickness: 20,
                glassColor: Colors.white.withValues(alpha: 0.5),
              ),
              child: LiquidGlass(
                shape: LiquidRoundedSuperellipse(borderRadius: 50),
                child: Container(
                  padding: EdgeInsets.all(4),
                  width: 116,
                  height: 39,
                  child: Text('🌿 AQI 53', style: AppTextStyles.aqi),
                ),
              ),
            ),
            Spacer(),
            LiquidGlassLayer(
              settings: LiquidGlassSettings(
                visibility: 0.75,
                thickness: 2,
                blur: 5,
                glassColor: Colors.white.withValues(alpha: 0.3),
              ),
              child: LiquidGlass(
                shape: LiquidRoundedSuperellipse(borderRadius: 30),
                child: Container(
                  padding: EdgeInsets.all(13),
                  width: 370,
                  height: 165,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '5-day forecast                   More details ‣ ',
                        style: AppTextStyles.forecastHeader,
                      ),
                      Gap(27),
                      Text(
                        '🌤️ Mon clear                      39° / 26°',
                        style: AppTextStyles.forecastDetails,
                      ),
                      Gap(15),
                      Text(
                        '☀️ Tue clear                      39° / 26°',
                        style: AppTextStyles.forecastDetails,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Gap(10),
          ],
        ),
      ),
    );
  }
}

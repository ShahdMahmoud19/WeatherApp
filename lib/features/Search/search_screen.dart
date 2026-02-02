import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:weather_app/core/theme/text_style.dart';
import 'package:weather_app/features/Search/widgets/list_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 164, 186, 248), Colors.white],
            stops: [0.0, 0.3],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                children: [
                  Gap(50),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      style: AppTextStyles.searchField,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        filled: true,
                        fillColor: Color.fromARGB(77, 120, 150, 186),
                        hoverColor: Colors.white,

                        prefixIcon: Icon(Icons.search, color: Colors.white),
                        hintText: ' Enter location ',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Kadwa',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      final list = [
                        ListWidget(
                          country: 'Cairo',
                          temp: ' 38°',
                          subtemp: 'AQI 53     38° / 25° ',
                        ),
                        ListWidget(
                          country: 'Alexandra',
                          temp: ' 35°',
                          subtemp: 'AQI 53     35° / 25° ',
                        ),
                        ListWidget(
                          country: 'Tokyo',
                          temp: ' 38°',
                          subtemp: 'AQI 53     38° / 25° ',
                        ),
                      ];
                      return list[index];
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Gap(10);
                    },
                    itemCount: 3,
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              left: 0,
              child: SvgPicture.asset(
                height: 330,
                colorFilter: ColorFilter.linearToSrgbGamma(),
                'assets/images/Group 18.svg',
                semanticsLabel: 'Dart Logo',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

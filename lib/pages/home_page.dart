import 'package:flutter/material.dart';
import 'package:task_app/components/my_elevation_button.dart';
import 'package:task_app/components/my_timelinetile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Мои объявления",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Груз',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Color(0xFFBABABA),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '600 ₽',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF080808),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 75,
                            height: 34,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                textStyle: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                                backgroundColor: const Color(0xFFF1F1F1),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(20.0), // <-- Radius
                                ),
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text('Задача взята'),
                                ));
                              },
                              child: const Text(
                                "Повезу",
                                style: TextStyle(
                                  color: Color(0xFFBABABA),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Начало таймлайна
                      const Column(
                        children: [
                          MyTimeLineTile(
                            isFisrt: true,
                            isLast: false,
                            isPast: true,
                            icon: Icons.radio_button_checked_rounded,
                            lineColor: Color(0xFFD9D9D9),
                            circleColor: Color(0xFFEEEEEE),
                            iconColor: Color(0xFFC0C0C0),
                            firstText: "Россия, Москва",
                            secondText: "12:00, 6 декабря",
                          ),

                          // Середина таймлайна

                          // Конец Таймлайна
                          MyTimeLineTile(
                            isFisrt: false,
                            isLast: true,
                            isPast: false,
                            icon: Icons.location_on_outlined,
                            lineColor: Color(0xFFD9D9D9),
                            circleColor: Color(0xFFE5EAFF),
                            iconColor: Color(0xFF3B59A8),
                            firstText: "Россия, Москва",
                            secondText: "12:00, 6 декабря",
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Описание',
                                  style: TextStyle(
                                    color: Color(0xFFBABABA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ':Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor...',
                                  style: TextStyle(
                                    color: Color(0xFFBABABA),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          MyElevationButton(
                            onPressed: () {},
                            text: "Изменить",
                            borderRadius: 29,
                            firstIcon: null,
                            secondIcon: Icons.edit_note_outlined,
                            textColor: const Color(0xFF3B59A8),
                            backgroundColor: const Color(0xFFE5EAFF),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MyElevationButton(
          onPressed: () {},
          text: "Разместить объявление",
          firstIcon: Icons.add,
        ),
      ),
    );
  }
}

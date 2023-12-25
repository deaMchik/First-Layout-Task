import 'package:flutter/material.dart';
import 'package:task_app/components/my_elevation_button.dart';
import 'package:task_app/components/my_textbutton.dart';
import 'package:task_app/components/my_textview.dart';
import 'package:task_app/pages/makeoffer_page.dart';

class ConfirmNumberPage extends StatelessWidget {
  const ConfirmNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              // Column для основной страницы
              child: Column(
                children: [
                  const SizedBox(height: 145),

                  // Column для текста
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        // Авторизация
                        Text(
                          "Авторизация",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),

                        SizedBox(height: 13),

                        //Введите номер телефона для авторизации
                        Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Введите код, отправленный на номер\n+7 (888) 777-66-55",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xBBBBBBBB),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),

                  // Column для input полей
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Код из смс
                      const MyTextView(
                        labelText: "Код из смс",
                        prefixText: "",
                        inputType: TextInputType.number,
                        maxLength: 6,
                        maxLines: 1,
                      ),
                      MyTextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Код повторно отправлен'),
                            ));
                          },
                          textButton: "Получить код повторно"),
                    ],
                  ),
                  const SizedBox(height: 38),

                  //Кнопка Продолжить
                  MyElevationButton(
                    text: "Продолжить",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const MakeOfferPage();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

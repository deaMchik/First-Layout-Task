import 'package:flutter/material.dart';
import 'package:task_app/components/my_elevation_button.dart';
import 'package:task_app/components/my_textview.dart';
import 'package:task_app/pages/confirm_number_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                        Text(
                          textAlign: TextAlign.center,
                          "Введите номер телефона для авторизации",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFBABABA),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),

                  // Column для input полей
                  const Column(
                    children: [
                      // Первый input
                      MyTextView(
                        labelText: "Введите номер",
                        prefixText: "+7",
                        inputType: TextInputType.phone,
                        maxLength: 10,
                        maxLines: 1,
                      ),

                      SizedBox(height: 20),

                      // Второй input
                      MyTextView(
                        prefixIcon: null,
                        labelText: "Введите ваше имя",
                        prefixText: "",
                        inputType: TextInputType.text,
                        maxLength: null,
                        maxLines: 1,
                      ),
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
                            return const ConfirmNumberPage();
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

// Создание кнопки и переход на другую страницу

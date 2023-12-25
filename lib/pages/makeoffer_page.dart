import 'package:flutter/material.dart';
import 'package:task_app/components/my_appbar.dart';
import 'package:task_app/components/my_elevation_button.dart';
import 'package:task_app/components/my_textview.dart';
import 'package:task_app/pages/home_page.dart';

class MakeOfferPage extends StatelessWidget {
  const MakeOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: MyAppBar(
        appBar: AppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Новое объявление
                const Text(
                  "Новое объявление",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 40),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // Тут уже начинается объявления
                  children: [
                    //Название объявления
                    const Text(
                      "Название объявления",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    const MyTextView(
                      labelText: 'Введите название',
                      prefixText: "",
                      inputType: TextInputType.text,
                      maxLength: null,
                      maxLines: 1,
                    ),

                    const SizedBox(height: 20),

                    // Описание
                    const Text(
                      "Описание",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    const MyTextView(
                      labelText: 'Введите описание',
                      prefixText: "",
                      inputType: TextInputType.text,
                      maxLength: null,
                      maxLines: 2,
                    ),

                    const SizedBox(height: 20),

                    // Откуда
                    const Text(
                      "Откуда",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    const MyTextView(
                      labelText: 'Страна, Город, Аэропорт',
                      prefixText: "",
                      inputType: TextInputType.text,
                      maxLength: null,
                      maxLines: 1,
                    ),

                    const SizedBox(height: 20),

                    // Куда
                    const Text(
                      "Куда",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    const MyTextView(
                      labelText: 'Страна, Город, Аэропорт',
                      prefixText: "",
                      inputType: TextInputType.text,
                      maxLength: null,
                      maxLines: 1,
                    ),

                    const SizedBox(height: 20),

                    // Дата отъезда
                    const Text(
                      "Дата отъезда",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    const MyTextView(
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      prefixIcon: Icon(Icons.calendar_today_outlined, size: 18),
                      labelText: '06/11/2023г',
                      prefixText: "",
                      inputType: TextInputType.text,
                      maxLength: 8,
                      maxLines: 1,
                    ),

                    const SizedBox(height: 20),

                    // Дата отъезда
                    const Text(
                      "Дата приезда",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    const MyTextView(
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      prefixIcon: Icon(Icons.calendar_today_outlined, size: 18),
                      labelText: '06/11/2023г',
                      prefixText: "",
                      inputType: TextInputType.text,
                      maxLength: 8,
                      maxLines: 1,
                    ),

                    const SizedBox(height: 20),

                    MyElevationButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const HomePage();
                            }),
                          );
                        },
                        text: 'Разместить объявление')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CostilniyTextView extends StatelessWidget {
  const CostilniyTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.datetime,
      maxLines: null,
      obscureText: false,
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.arrow_drop_down),
        prefixIcon: const Icon(
          Icons.calendar_today_outlined,
          size: 18,
        ),
        alignLabelWithHint: true,
        counterText: "",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xBBBBBBBB)),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xBBBBBBBB)),
          borderRadius: BorderRadius.circular(12.0),
        ),
        labelStyle: const TextStyle(fontSize: 12, color: Color(0xBBBBBBBB)),
        labelText: '06/11/2023г',
      ),
    );
  }
}

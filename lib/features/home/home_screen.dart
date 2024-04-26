import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_tutorial_yt/core/resources/custom_text_styles.dart';
import 'package:flutter_chatgpt_tutorial_yt/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  String generatedText = '';
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 20.0,
            vertical: 80.sp,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  maxLines: 3,
                  // textDirection: TextDirection.rtl,
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'اكتب هنا قصتك ',
                    enabled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  final model =
                      GenerativeModel(model: 'gemini-pro', apiKey: apiKey);

                  // Generate text content based on a prompt
                  final prompt = '${_controller.text}اكمل هذه القصه';
                  final content = [Content.text(prompt)];
                  final response = await model.generateContent(content);
                  setState(() {
                    isLoading = false;
                    generatedText = response.text.toString();
                  });
                  print(response.text);
                },
                child: const Text('Generate'),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: isLoading
                    ? const CircularProgressIndicator()
                    : Text(
                        generatedText,
                        style: getBoldStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

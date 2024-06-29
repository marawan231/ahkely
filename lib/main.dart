import 'package:ahkeely/app/app.dart';
import 'package:flutter/material.dart';

const apiKey =
    'AIzaSyABZwM4R62aSloxkIBvPkzeBSMgsa55WKQ'; // Replace with your actual API key

void main() async {
  // Create a GenerativeModel instance

  runApp(const MyApp());
}

/*
  final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);

  // Generate text content based on a prompt
  final prompt = 'كان يمكان انسان ناجح اكمل القصه في سطر واحد';
  final content = [Content.text(prompt)];
  final response = await model.generateContent(content);

  // Display the generated text
  log(response.text.toString()); */
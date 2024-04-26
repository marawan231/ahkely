
// extension Validator on String {
//   String? noValidate() {
//     return null;
//   }

//   String? validateEmpty({String? message}) {
//     if (trim().isEmpty) {
//       return message ?? 'This field is mandatory';
//     }
//     return null;
//   }

//   String? validateName({String? message}) {
//     if (trim().isEmpty) {
//       return message ?? 'This field is mandatory';
//     } else if (!RegExp(r"^[a-zA-Z\s]{1,}$").hasMatch(this)) {
//       return message ?? 'Please provide a valid name.';
//     }
//     return null;
//   }

//   String? validatePassword({String? message}) {
//     if (trim().isEmpty) {
//       return message;
//     } else if (length < 6) {
//       return message;
//     }
//     return null;
//   }

//   String? validateEmail({String? message}) {
//     if (trim().isEmpty) {
//       return message ?? 'This field is mandatory';
//     } else if (!RegExp(r"^[\w-]+(\.[\w-]+)*@[A-Za-z0-9]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})$").hasMatch(this)) {
//       return message ?? 'Please provide a valid email address.';
//     }
//     return null;
//   }

//   String? validateEmailORNull({String? message}) {
//     if (trim().isNotEmpty) {
//       if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this)) {
//         return message;
//       }
//     }
//     return null;
//   }

//   String? validatePhone({String? message}) {
//     if (trim().isEmpty) {
//       return message ?? "  S.of(Go.navigatorKey.currentContext!).phoneNumberRequired";
//     } else if (!RegExp(r'(^1(0|1|2|5)[0-9]{8}$)').hasMatch(this) || length < 10) {
//       return 'This is an invalid  phone number';
//     }
//     return null;
//   }

//   String? validatePasswordConfirm({required String pass, String? message}) {
//     if (trim().isEmpty) {
//       return message;
//     } else if (this != pass) {
//       return message;
//     }
//     return null;
//   }

//   String? validateCardNum({String? message}) {
//     if (trim().isEmpty) {
//       return message ?? 'Card Number is required';
//     }
//     if (length != 19) {
//       return message ?? 'Card Number is invalid';
//     }
//     if (!isLuhnValid(this)) {
//       return message ?? 'Card Number is invalid';
//     }
//     return null;
//   }

//   bool isLuhnValid(String cardNumber) {
//     String cleanCardNumber = cardNumber.replaceAll(' ', '');
//     int sum = 0;
//     bool alternate = false;

//     for (int i = cleanCardNumber.length - 1; i >= 0; i--) {
//       int digit = int.parse(cleanCardNumber[i]);

//       if (alternate) {
//         digit *= 2;
//         if (digit > 9) {
//           digit -= 9;
//         }
//       }
//       sum += digit;
//       alternate = !alternate;
//     }
//     return sum % 10 == 0;
//   }

//   String? expiryDateValidator({String? message}) {
//     // print('String is $this');
//     if (trim().isEmpty) {
//       return message ?? 'Expiry Date is required';
//     }
//     final DateTime now = DateTime.now();
//     final List<String> date = split(RegExp(r'/'));

//     final int month = int.parse(date.first);
//     final int year = int.parse('20${date.last}');

//     final int lastDayOfMonth = month < 12 ? DateTime(year, month + 1, 0).day : DateTime(year + 1, 1, 0).day;

//     final DateTime cardDate = DateTime(year, month, lastDayOfMonth, 23, 59, 59, 999);

//     DateTime tenYearsFromNow = DateTime.now().add(const Duration(days: 365 * 11));

//     if (cardDate.isAfter(tenYearsFromNow)) {
//       return message ?? 'Expiry Date is invalid';
//     }

//     if (cardDate.isBefore(now) || month > 12 || month == 0) {
//       return message ?? 'Expired Expiry Date';
//     }
//     return null;
//   }

//   String? cvvValidator({String? message}) {
//     if (trim().isEmpty) {
//       return message ?? 'CVV is required';
//     } else if (length < 3) {
//       return message ?? 'CVV is invalid';
//     }
//     return null;
//   }

//   String? validate({required List<ValidatorEntity> validators}) {
//     String? message;
//     for (var validator in validators) {
//       if (validator.type == 'text') {
//         if (trim().isNotEmpty) {
//           for (var option in validator.options) {
//             switch (option.option) {
//               case 'min':
//                 if (length < option.value) {
//                   message = '${validator.message} : ${option.message}';
//                 }
//               case 'max':
//                 if (length > option.value) {
//                   message = '${validator.message} : ${option.message}';
//                 }
//               case 'regex':
//                 if (!RegExp(r'' + option.value.replaceAll('\\\\', '\\')).hasMatch(this)) {
//                   message = validator.message;
//                 }
//             }
//           }
//         }
//       }
//       if (validator.type == 'required') {
//         if (trim().isEmpty) {
//           message = validator.message;
//         }
//       }
//     }
//     return message;
//   }
// }

// extension ValidatorDrop<DataType> on DataType {
//   String? validateDropDown({String? message}) {
//     if (this == null) {
//       return message;
//     }
//     return null;
//   }
// }

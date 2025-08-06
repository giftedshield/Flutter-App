// import 'package:flutter/material.dart';

// class RegisterPage extends StatefulWidget {
//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController usernameController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   String? selectedGender;
//   DateTime? selectedDate;
//   String? statusRegister;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Register Page")),
//       body: Container(
//         margin: EdgeInsets.all(10),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Register for our application!",
//                 style: TextStyle(fontSize: 30.0),
//               ),
//               Text("Please fill in the details below!"),
//               Container(
//                 margin: EdgeInsets.only(top: 10, bottom: 10),
//                 child: TextField(
//                   controller: nameController,
//                   decoration: InputDecoration(
//                     hintText: 'Name',
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 10, bottom: 10),
//                 child: TextField(
//                   controller: usernameController,
//                   decoration: InputDecoration(
//                     hintText: 'Username or Email',
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 10, bottom: 10),
//                 child: TextField(
//                   controller: passwordController,
//                   decoration: InputDecoration(
//                     hintText: 'Password',
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: true,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 10, bottom: 10),
//                 child: DropdownButtonFormField<String>(
//                   value: selectedGender,
//                   items: ["Wanita", "Perempuan", "Lainya"]
//                       .map(
//                         (Gender) => DropdownMenuItem(
//                           value: Gender,
//                           child: Text(Gender),
//                         ),
//                       )
//                       .toList(),
//                   onChanged: (value) {
//                     setState(() {
//                       selectedGender = value;
//                     });
//                   },
//                   decoration: InputDecoration(
//                     hintText: 'Gender',
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 10, bottom: 10),
//                 child: ListTile(
//                   contentPadding: EdgeInsets.zero,
//                   title: Text(
//                     selectedDate == null
//                         ? "Silahkan pilih tanggal lahir"
//                         : "Tanggal lahir: ${selectedDate!.toLocal()}".split(
//                             ' ',
//                           )[0],
//                   ),
//                   trailing: Icon(Icons.calendar_today),
//                   onTap: () async {
//                     DateTime? picked = await showDatePicker(
//                       context: context,
//                       initialDate: DateTime(2000),
//                       firstDate: DateTime(1900),
//                       lastDate: DateTime.now(),
//                     );
//                     if (picked != null) {
//                       setState(() {
//                         selectedDate = picked;
//                       });
//                     }
//                   },
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 10, bottom: 10),
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       if (nameController.text.isNotEmpty &&
//                           usernameController.text.isNotEmpty &&
//                           passwordController.text.isNotEmpty &&
//                           selectedGender != null &&
//                           selectedDate != null) {
//                         statusRegister =
//                             nameController.text +
//                             "\n" +
//                             usernameController.text +
//                             "\n" +
//                             passwordController.text +
//                             "\n" +
//                             selectedGender! +
//                             "\n" +
//                             selectedDate!.toLocal().toString().split(' ')[0];
//                       } else {
//                         statusRegister = "isi semua data";
//                       }
//                     });
//                   },
//                   child: Text("Register"),
//                 ),
//               ),
//               Text(statusRegister ?? '', style: TextStyle(color: Colors.red)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

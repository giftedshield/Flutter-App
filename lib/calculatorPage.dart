import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'controllers/calculatorController.dart';
import 'routes/routes.dart';

class calculatorPage extends StatelessWidget {
  const calculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CalculatorController());

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: controller.txtangka1,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(labelText: 'Angka Pertama'),
              ),
              TextField(
                controller: controller.txtangka2,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(labelText: 'Angka Kedua'),
              ),
              // Replace your 4 ElevatedButton widgets with this Grid:
              Container(
                margin: const EdgeInsets.only(top: 16),
                height: 120, // fixed height to contain grid nicely
                child: Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: controller.tambah,
                        child: Text("+"),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: controller.kurang,
                        child: Text("-"),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: controller.kali,
                        child: Text("*"),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: controller.bagi,
                        child: Text("/"),
                      ),
                    ),
                  ],
                ),
              ),
              Obx(
                () => Text(
                  'Hasil: ${controller.txtHasil.value}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: controller.clear,
                      child: const Text("Clear"),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

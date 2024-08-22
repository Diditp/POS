import 'package:flutter/material.dart';
import 'package:your_pos/features/testing/printer/invoices/food_and_drink_invoice/invoice_data.dart';
import 'package:your_pos/features/testing/printer/printer_services/print_preview_screen.dart';
import 'package:your_pos/features/testing/printer/printer_services/printer_setting_screen.dart';

class Print extends StatelessWidget {
  const Print({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final data = InvoiceData.localInvoiceData();
  bool showPreview = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              PrinterSettingScreen(data: data),
              ElevatedButton(
                onPressed: () {
                  showPreview = true;

                  setState(() {});
                },
                child: const Text('Invoice Preview'),
              ),
              showPreview
                  ? PrintPreviewScreen(
                      data: data,
                      showGeneratedInvoice: true,
                      mainContext: context,
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}

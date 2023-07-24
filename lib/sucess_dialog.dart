import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  final String message;

  SuccessDialog({required this.message});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 64),
            SizedBox(height: 16),
            Text(
              'Sucesso!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(message),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Fecha o diálogo
              },
              child: Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_1/constants.dart';

class Calculatorscreen extends StatefulWidget {
  @override
  CalculatorscreenState createState() => CalculatorscreenState();
}

class CalculatorscreenState extends State<Calculatorscreen> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

  double result = 0;

  double get firstValue => double.tryParse(firstController.text) ?? 0;
  double get secondValue => double.tryParse(secondController.text) ?? 0;

  void resetCalculator() {
    setState(() {
      firstController.clear();
      secondController.clear();
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 252, 204),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 179, 250, 182),
        title: Text('Mini-calculator', textAlign: TextAlign.center),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter first number',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 16),

            TextField(
              controller: secondController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter second number',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 168, 231, 156),
                    foregroundColor: const Color.fromARGB(255, 76, 77, 76),
                  ),
                  onPressed: () {
                    setState(() {
                      result = firstValue + secondValue;
                    });
                  },
                  child: Text('Add', style: TextStyle(fontSize: 12)),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 168, 231, 156),
                    foregroundColor: const Color.fromARGB(255, 76, 77, 76),
                  ),
                  onPressed: () {
                    setState(() {
                      result = firstValue - secondValue;
                    });
                  },
                  child: Text('Substract', style: TextStyle(fontSize: 12)),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 168, 231, 156),
                    foregroundColor: const Color.fromARGB(255, 76, 77, 76),
                  ),
                  onPressed: () {
                    setState(() {
                      secondValue == 0
                          ? result = 0
                          : result = firstValue / secondValue;
                    });
                  },
                  child: Text('Divide', style: TextStyle(fontSize: 12)),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 168, 231, 156),
                    foregroundColor: const Color.fromARGB(255, 76, 77, 76),
                  ),
                  onPressed: () {
                    setState(() {
                      result = firstValue * secondValue;
                    });
                  },
                  child: Text('Multiply', style: TextStyle(fontSize: 12)),
                ),

                
              ],
            ),

            SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 112, 190, 131),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Result: $result',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 168, 231, 156),
                    foregroundColor: const Color.fromARGB(255, 76, 77, 76),
                  ),
                  onPressed: resetCalculator,
                  child: Text('Reset', style: TextStyle(fontSize: 12)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

//1.create a variable that stores the converted currency value
//2.creata a function that stores the converted currency value
//3.store the value in the variable that we created
//4.display the variable
class CurrencyConvertorMaterialpage extends StatefulWidget {
  const CurrencyConvertorMaterialpage({super.key});
  @override
  State<CurrencyConvertorMaterialpage> createState() =>
      _CurrencyConvertorMaterialpage();
}

//private class
class _CurrencyConvertorMaterialpage
    extends State<CurrencyConvertorMaterialpage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //it will chang e the background colour
      backgroundColor: Color.fromARGB(255, 106, 105, 179),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 119, 118, 184),
        title: Text(
          "Currency Convertor",
          style: TextStyle(
            color: Color.fromARGB(255, 253, 252, 253),
            fontSize: 40,
            fontFamily: 'Arial',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.currency_exchange),
      ),
      body: Center(
        child: Column(
          //column
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            //int ->string integervalue.tostring()
            //string -->int int.parse(stringvalue)
            Text(
              result.toString(),
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w800,
                //it will change the text colour
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            //takes user input
            //padding
            //container
            Padding(
              padding: const EdgeInsets.all(50),
              child: TextField(
                controller: textEditingController,

                //decoration is used to edit in the input bar text
                decoration: InputDecoration(
                  hintText: 'please enter the amount in indian rupees',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 21, 21, 22)),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Color.fromARGB(255, 7, 7, 7),
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                  ),

                  //similarly suffix is also there s
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            //buootn types
            //raised and text button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                child: const Text('click me'),
                style: const ButtonStyle(
                  elevation: WidgetStatePropertyAll(15),
                  backgroundColor: WidgetStatePropertyAll(
                    Color.fromARGB(66, 2, 2, 2),
                  ),
                  foregroundColor: WidgetStatePropertyAll(
                    Color.fromARGB(255, 228, 234, 237),
                  ),
                  minimumSize: WidgetStatePropertyAll(Size(600, 40)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

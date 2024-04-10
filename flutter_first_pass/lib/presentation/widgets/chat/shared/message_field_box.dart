import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

final ValueChanged<String> onValue;

  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController =
        TextEditingController(); //Nos permite hacer una referencia o un binding a nuestro elemento textformfield
    final focusNode = FocusNode(); //Referencia al edittext

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
        hintText: 'Captura tu mensaje',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            final textValue = textController.value.text;
            textController.clear();
            // print('Presed');
            onValue(textValue);
          },
        ));

    return TextFormField(
      // keyboardAppearance: Brightness.dark,
      // keyboardType: TextInputType.number,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        
        // print('Submit $value');
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      },
      // onChanged: (value) {
      //   // print('Changed $value');
        
      // },
    );
  }
}

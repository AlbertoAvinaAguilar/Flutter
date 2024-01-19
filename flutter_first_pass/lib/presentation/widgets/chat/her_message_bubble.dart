import 'package:flutter/material.dart';

class HerMessageBubble
 extends StatelessWidget {
  const HerMessageBubble
  ({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(color: colors.secondary, borderRadius: BorderRadius.circular(20)),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Text("Tu lo eresss", style: TextStyle(color: Colors.white),),
        )
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
     print(size);
    return ClipRRect(borderRadius:BorderRadius.circular(20), child: Image.network('https://img.freepik.com/fotos-premium/gato-muy-gordo-ia-generativa_138015-2122.jpg',
    width: size.width * 0.6, height: 130,fit: BoxFit.cover,
    loadingBuilder: (context, child, loadingProgress) {
      if(loadingProgress == null) return child; //esto representa que realizo la carga de la imagen y retorna el chil que es ella misma
      return Container( //en caso contrario muestra este texto
        width: size.width * 0.6,
        height: 200,
        child: const Text('Mi amor'),
        );
    },));
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_first_pass/domain/entities/message.dart';

class HerMessageBubble
 extends StatelessWidget {

  final Message message;

  const HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(color: colors.secondary, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Text(message.text, style: const TextStyle(color: Colors.white),),
        )
        ),
        const SizedBox(height: 5),
        _ImageBubble(message.imageUrl! ), //el atributo es opcional colocamos ! para indicar que por este caso siempre va ir la imagen
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {

  final String  imageUrl;

  const _ImageBubble(this.imageUrl);

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
     print(size);
    return ClipRRect(borderRadius:BorderRadius.circular(20), child: Image.network(imageUrl,
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
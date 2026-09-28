import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});


  

  Stream<String> getLoadingMessages(){

    final messages = <String>[
    'Cargando...',
    'Por favor espere...',
    'Estamos preparando todo para usted...',
    'Un momento, por favor...',
    'Casi listo...',
  ];


    return Stream.periodic(const Duration(milliseconds: 1200), (step) {
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('Cargando...', style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 20),
          CircularProgressIndicator(strokeWidth: 2),
          SizedBox(height: 20),


          StreamBuilder(
            stream: getLoadingMessages(),
            builder: (context, snapshot) {
              if(!snapshot.hasData) return Text('Cargando...', style: Theme.of(context).textTheme.bodyMedium);

              return Text(snapshot.data!, style: Theme.of(context).textTheme.bodyMedium);
            },

          )

        ]
      ),
    );
  }
}
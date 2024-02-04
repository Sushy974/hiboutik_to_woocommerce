import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HomeBloc>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Importez votre fichier'),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                return bloc.add(EnPickFile());
              },
              child: const Icon(Icons.file_download_outlined),
            ),
            const Text('fichier_lue...cvs')
          ],
        ),
      ],
    );
  }
}

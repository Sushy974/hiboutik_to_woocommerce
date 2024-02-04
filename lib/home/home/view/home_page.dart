import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hiboutik_to_woocommerce/home/home/bloc/home_bloc.dart';
import 'package:hiboutik_to_woocommerce/home/home/view/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const Scaffold(
          backgroundColor: Colors.lightBlueAccent, body: HomeView()),
    );
  }
}

import 'package:aplication/core/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(title: const Text('App')),
        body: Builder(
          builder: (context) {
            if (state is HomeLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is HomeErrorState) {
              return Center(child: Text(state.error));
            } else if (state is HomeComplateState) {
              return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.data[index].name.toString()),
                    );
                  },
                  itemCount: state.data.length);
            } else {
              return const SizedBox();
            }
          },
        ),
      );
    });
  }
}

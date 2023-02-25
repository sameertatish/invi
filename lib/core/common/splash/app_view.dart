import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inv_aligner/core/common/splash/cubit/app_cubit.dart';
import 'package:inv_aligner/core/routes/route.gr.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: const AppPage(),
    );
  }
}

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  void initState() {
    callBloc();
    super.initState();
  }

  callBloc() {
    context.read<AppCubit>().checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) async {
          if (state is UnAuthenticated) {
            print('UnAuthenticated');
            AutoRouter.of(context).replaceAll([const ShrebatyHomePageRoute()]);
          }
          if (state is Authenticated) {
            print('Authenticated');
            AutoRouter.of(context).replaceAll([const InviHomePageRoute()]);
          }
        },
        builder: (context, state) {
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}

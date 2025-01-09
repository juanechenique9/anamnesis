import 'package:anamnesis/presentation/screens/anamnesis_step_one.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(path: '/',
    builder: (context, state) => const AnamnesisStepOne())
  ]);
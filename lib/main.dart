import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'core/core.dart';
import 'core/presentation/widgets/error_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

  final ErrorReporter errorReporter = ErrorReporter(client: _ReporterClient());
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(
    logListener(
      onReleaseModeException: errorReporter.report,
    ),
  );

  ErrorBoundary(
    isReleaseMode: !environment.isDebugging,
    errorViewBuilder: (_) => const ErrorView(),
    onException: AppLog.e,
    child: const SupremeBeing(),
  );
}

class _ReporterClient implements ReporterClient {
  _ReporterClient();

  @override
  FutureOr<void> report(
      {required StackTrace stackTrace,
      required Object error,
      Object? extra}) async {
    // TODO: Sentry or Crashlytics
  }

  @override
  void log(Object object) {
    AppLog.i(object);
  }
}

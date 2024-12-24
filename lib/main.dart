import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:iderma/firebase_options.dart'; // Ensure firebase_options.dart is properly generated
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:iderma/screens/authentication/auth_service_screen.dart';
import 'package:iderma/screens/authentication/auth/authentication_service.dart';
import 'package:provider/provider.dart';

void main() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with platform-specific options
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Preserve splash screen while the app initializes
  FlutterNativeSplash.preserve(
      widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

  // Run the Application
  runApp(const IDermaApplication());
}

class IDermaApplication extends StatefulWidget {
  const IDermaApplication({super.key});

  @override
  State<IDermaApplication> createState() => _IDermaApplicationState();
}

class _IDermaApplicationState extends State<IDermaApplication> {
  @override
  void initState() {
    super.initState();
    _initialization();
  }

  // Handles app initialization processes
  void _initialization() async {
    print("App initializing...");
    await Future.delayed(const Duration(seconds: 3));
    print("Initialization complete. Removing splash screen...");
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provides the AuthenticationService to the widget tree
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        // Provides an auth state stream to listen for changes
        StreamProvider<User?>(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
          initialData: null,
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthPage(), // Change this if you have a proper home screen
      ),
    );
  }
}

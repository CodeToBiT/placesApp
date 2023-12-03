import 'package:flutter/material.dart';
// import 'package:path/path.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _form = GlobalKey<FormState>();

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final _isLogin = true;
  final _enteredEmail = '';
  final _enteredPassword = '';
  final _enteredUsername = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.lock,
                  size: 100,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Welcome back, you've been missed!!",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 25,
                ),
                Form(
                  key: _form,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (!_isLogin)
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: "Username"),
                          enableSuggestions: false,
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.trim().length < 4) {
                              return 'Please enter a valid username atleast 4 characters';
                            }
                            return null;
                          },
                        ),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Email Address'),
                        enableSuggestions: false,
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        textCapitalization: TextCapitalization.none,
                        validator: (value) {
                          if (value == null ||
                              value.trim().isEmpty ||
                              !value.contains('@')) {
                            return 'Please enter a valid email address.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Password'),
                        enableSuggestions: false,
                        keyboardType: TextInputType.text,
                        autocorrect: false,
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                    ],
                  ),
                ),
                // TextField(
                //   controller: emailTextController,
                //   keyboardType: TextInputType.emailAddress,
                //   decoration: const InputDecoration(
                //     hintText: 'Enter Your Email Address',
                //     hintStyle: TextStyle(color: Colors.white),
                //   ),
                // ),
                // const SizedBox(
                //   height: 25,
                // ),
                // TextField(
                //   controller: passwordTextController,
                //   keyboardType: TextInputType.text,
                //   obscureText: true,
                //   decoration: const InputDecoration(
                //     hintText: 'Enter Your Password',
                //     hintStyle: TextStyle(color: Colors.white),
                //   ),
                // ),
                // const SizedBox(
                //   height: 25,
                // ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).colorScheme.primaryContainer),00000000000000
                  child: const Text('Login'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Register Now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

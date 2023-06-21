import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple,
              Colors.deepPurple,
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 100),
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.email, color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  // Add your email validation logic here
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  // Add your password validation logic here
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // Add your password recovery functionality here
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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





//
// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               decoration: const InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             const SizedBox(height: 16.0),
//             TextFormField(
//               decoration: const InputDecoration(
//                 labelText: 'Password',
//               ),
//               obscureText: true,
//             ),
//             const SizedBox(height: 16.0),
//             ElevatedButton(
//               child: Text('Login'),
//               onPressed: () {
//                 Navigator.pushNamed(context, '/dashboard');
//               },
//             ),
//             ElevatedButton(
//               child: Text("Don't have an account?"),
//               onPressed: () {
//                 // Add the necessary logic for the sign-up screen
//               },
//             ),
//             ElevatedButton(
//               child: Text("Forgot password?"),
//               onPressed: () {
//                 // Add the necessary logic for the forgot password screen
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

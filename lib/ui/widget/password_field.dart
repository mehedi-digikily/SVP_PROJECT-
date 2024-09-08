import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  double _passwordStrength = 0;
  bool _passwordLengthCheck = false;
  bool _containsSpecialChar = false;

  void _checkPasswordStrength(String password) {
    setState(() {
      _passwordLengthCheck = password.length > 8;
      _containsSpecialChar = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

      if (_passwordLengthCheck && _containsSpecialChar) {
        _passwordStrength = 1.0; // Strong
      } else if (_passwordLengthCheck || _containsSpecialChar) {
        _passwordStrength = 0.5; // Medium
      } else {
        _passwordStrength = 0.1; // Weak
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Strength Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
              onChanged: (value) {
                _checkPasswordStrength(value);
              },
            ),
            SizedBox(height: 10),
            LinearProgressIndicator(
              value: _passwordStrength,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(
                _passwordStrength < 0.33
                    ? Colors.red
                    : _passwordStrength < 0.66
                    ? Colors.orange
                    : Colors.green,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  _passwordLengthCheck ? Icons.check_circle : Icons.cancel,
                  color: _passwordLengthCheck ? Colors.green : Colors.red,
                ),
                SizedBox(width: 10),
                Text('Must be more than 8 characters'),
              ],
            ),
            Row(
              children: [
                Icon(
                  _containsSpecialChar ? Icons.check_circle : Icons.cancel,
                  color: _containsSpecialChar ? Colors.green : Colors.red,
                ),
                SizedBox(width: 10),
                Text('Contains a special character (e.g., @, #, &, *)'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

enum Gender { male, female }

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              // password textformfield with icon
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    onPressed: () {},
                  ),
                ),
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Row(
                    children: [
                      Radio<Gender>(
                        value: Gender.male,
                        groupValue: Gender.male,
                        onChanged: (_) {},
                      ),
                      const Text("Laki-Laki"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<Gender>(
                        value: Gender.female,
                        groupValue: Gender.male,
                        onChanged: (_) {},
                      ),
                      const Text("Perempuan"),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                value: false,
                onChanged: (_) {},
                title: const Text("Setuju dengan ketentuan?"),
                dense: true,
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: const EdgeInsets.all(0),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                child: const Text('Register'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

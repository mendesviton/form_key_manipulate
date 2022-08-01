import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  FocusNode focusEmail = FocusNode();
  FocusNode focusEdit2 = FocusNode();
  FocusNode focusEdit3 = FocusNode();
  FocusNode focusEdit4 = FocusNode();
  FocusNode focusEdit5 = FocusNode();
  FocusNode focusEdit6 = FocusNode();

  final keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registre-se'),
      ),
      body: Form(
        key: keyForm,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                focusNode: focusEmail,
                autofocus: true,
                decoration: const InputDecoration(hintText: 'Email'),
                onEditingComplete: () {
                  focusEdit2.requestFocus();
                },
              ),
              TextFormField(
                validator: (value) {
                  if (value == '') {
                    return 'ta vazio porra';
                  } else {
                    return null;
                  }
                },
                focusNode: focusEdit2,
                decoration: InputDecoration(hintText: 'Edit2'),
                onEditingComplete: () => focusEdit3.requestFocus(),
              ),
              TextField(
                focusNode: focusEdit3,
                decoration: InputDecoration(hintText: 'Edit3'),
                onEditingComplete: () => focusEdit4.requestFocus(),
              ),
              TextField(
                focusNode: focusEdit4,
                decoration: InputDecoration(hintText: 'Edit4'),
                onEditingComplete: () => focusEdit5.requestFocus(),
              ),
              TextField(
                focusNode: focusEdit5,
                decoration: InputDecoration(hintText: 'Edit5'),
                onEditingComplete: () => focusEdit6.requestFocus(),
              ),
              ElevatedButton(
                onPressed: () {
                  if (keyForm.currentState!.validate()) {
                    print('ta valido');
                  } else {
                    print('nao ta valido');
                  }
                },
                child: Text('Registrar2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

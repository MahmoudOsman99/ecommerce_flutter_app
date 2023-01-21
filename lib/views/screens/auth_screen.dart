import 'package:ecommerce_app/utilities/enums.dart';
import 'package:ecommerce_app/views/widgets/main_button.dart';
import 'package:ecommerce_app/views/widgets/main_text_form_field.dart';
import 'package:flutter/material.dart';

class AuthPageScreen extends StatefulWidget {
  const AuthPageScreen({super.key});

  @override
  State<AuthPageScreen> createState() => _AuthPageScreenState();
}

class _AuthPageScreenState extends State<AuthPageScreen> {
  // var passIcon = Icon(Icons.visibility);
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  // bool isLogin = true;
  var _authType = AuthFormType.login;
  //this is the raduis for each button raduis and text form field
  double radius = 5;

// فاينال معناها ان القيمة الاولي اللي هتاخدها مش هيحصلها اي تغيير بعد كده
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(20),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    _authType == AuthFormType.login ? 'Login' : 'Register',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 35),
                  ),
                  SizedBox(
                    height: 100,
                  ),

                  MainTextFormField(
                    inputType: TextInputType.emailAddress,
                    focusNode: _emailFocusNode,
                    controller: _emailController,
                    onEditingComplete: () => _passwordFocusNode.requestFocus(),
                    textInputAction: TextInputAction.next,
                    radius: radius,
                    hintText: 'Enter your username',
                    prefixIcon: const Icon(
                      Icons.email,
                    ),
                    onvalidate: (String? value) {
                      return value!.isEmpty ? 'this field is required!' : null;
                    },
                  ),
                  //this is the input section
                  SizedBox(
                    height: 10,
                  ),
                  MainTextFormField(
                    inputType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    focusNode: _passwordFocusNode,
                    textInputAction: TextInputAction.done,
                    hintText: 'Enter your password',
                    radius: radius,
                    onvalidate: (String? value) {
                      return value!.isEmpty
                          ? 'this field is required!'
                          : value.length < 6
                              ? 'Password must be 6 or hiegher'
                              : null;
                    },
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // this is the forgot your password section, shown if the _authType = AuthFormType.login
                  if (_authType == AuthFormType.login)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: (() => print('tapped forgot password!')),
                          child: Text(
                            'Forgot your password?',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_right_alt,
                          color: Colors.red,
                        ),
                      ],
                    ),

                  const SizedBox(
                    height: 30,
                  ),

                  // this is the submit botton
                  MainButton(
                    radius: radius,
                    text:
                        _authType == AuthFormType.login ? 'Login' : 'Register',
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) {
                        debugPrint('not valid');
                      }
                    },
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  // the register screen by inkwell
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: (() => setState(() {
                            _formKey.currentState!.reset();
                            _emailController.clear();
                            _passwordController.clear();
                            _authType = _authType == AuthFormType.login
                                ? AuthFormType.register
                                : AuthFormType.login;
                          })),
                      child: Text(
                        _authType == AuthFormType.login
                            ? 'Don\'n have an account? Register'
                            : 'Already have an account? Login',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height * 0.16,
                  ),
                  // Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      _authType == AuthFormType.login
                          ? 'Or Login with'
                          : 'Or Sign Up With',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: const Icon(
                            Icons.facebook_outlined,
                            color: Colors.blue,
                            size: 50,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: const Icon(
                            Icons.email_outlined,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

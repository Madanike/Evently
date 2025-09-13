import 'package:evently_project/core/resources/asset_manager.dart';
import 'package:evently_project/core/resources/validator.dart';
import 'package:evently_project/core/routes_manager/routes_manager.dart';
import 'package:evently_project/core/widget/custom_elevated_bottom.dart';
import 'package:evently_project/core/widget/custom_text_button.dart';
import 'package:evently_project/core/widget/custome_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool securePassword = true;

  bool secureRePassword = true;

  late TextEditingController _nameController;

  late TextEditingController _emailController;

  late TextEditingController _passwordController;

  late TextEditingController _rePasswordController;

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _rePasswordController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: MediaQuery.of(context).viewInsets.top,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  AssetsImages.eventlyLogo,
                  width: 131.w,
                  height: 141.h,
                ),
                SizedBox(height: 24.h),
                CustomeTextFormField(
                  controller: _nameController,
                  validator: Validator.validateName,
                  label: 'Name',
                  prefixIcon: Icons.person_3_rounded,
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 16.h),
                CustomeTextFormField(
                  controller: _emailController,
                  validator: Validator.validateEmail,
                  label: 'E-Mail',
                  prefixIcon: Icons.mail,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16.h),
                CustomeTextFormField(
                  controller: _passwordController,
                  validator: Validator.validatePassword,
                  isSecure: securePassword,
                  label: 'Password',
                  prefixIcon: Icons.lock_open_outlined,
                  suffixIcon: IconButton(
                    onPressed: _onPasswordIconClick,
                    icon: Icon(
                      securePassword ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 16.h),
                CustomeTextFormField(
                  controller: _rePasswordController,
                  validator: Validator.validateRepassword,
                  isSecure: secureRePassword,
                  label: 'Re-Password',
                  prefixIcon: Icons.lock_open_outlined,
                  suffixIcon: IconButton(
                    onPressed: _onRePasswordIconClick,
                    icon: Icon(
                      secureRePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),

                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 16.h),
                CustomElevatedBottom(
                  title: 'Create Account',
                  onPress: _createAccount,
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Have Account ?',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    CustomTextButton(
                      text: 'Login',
                      onTab: () {
                        Navigator.pushReplacementNamed(
                          context,
                          RouteManager.login,
                        );
                      },
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

  void _onPasswordIconClick() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _onRePasswordIconClick() {
    setState(() {
      secureRePassword = !secureRePassword;
    });
  }

  void _createAccount() {
    if (_formkey.currentState?.validate() == false) return;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }
}

import 'package:evently_project/core/resources/asset_manager.dart';
import 'package:evently_project/core/resources/colors_manager.dart';
import 'package:evently_project/core/resources/validator.dart';
import 'package:evently_project/core/widget/custom_elevated_bottom.dart';
import 'package:evently_project/core/widget/custom_text_button.dart';
import 'package:evently_project/core/widget/custome_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/routes_manager/routes_manager.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool securePassword = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AssetsImages.eventlyLogo, width: 136.h, height: 186.w),
              SizedBox(height: 24.h),
              CustomeTextFormField(
                label: 'E-mail',
                validator: Validator.validateEmail,
                controller: _emailController,
                prefixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.h),
              CustomeTextFormField(
                isSecure: securePassword,
                label: 'password',
                validator: Validator.validatePassword,
                controller: _passwordController,
                prefixIcon: Icons.lock,
                suffixIcon: IconButton(
                  onPressed: _onPasswordIconClick,
                  icon: Icon(
                    securePassword ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                // keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 16.h),
              CustomTextButton(
                text: 'Forget Password',
                textAlign: TextAlign.right,
                onTab: () {},
              ),
              SizedBox(height: 24.h),
              CustomElevatedBottom(title: 'Login', onPress: _login),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don`t Have Account? ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  CustomTextButton(
                    text: 'Create Account',
                    onTab: () {
                      Navigator.pushReplacementNamed(context, RouteManager.login);
                    },
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: ColorsManager.blue,
                      indent: 14,
                      endIndent: 14,
                    ),
                  ),
                  Text(
                    'Or',
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorsManager.blue,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: ColorsManager.blue,
                      indent: 14,
                      endIndent: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: ColorsManager.blue),
                  padding: REdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AssetsImages.googleIcon),
                    SizedBox(width: 6.w),
                    Text(
                      'Login With Google',
                      style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: ColorsManager.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onPasswordIconClick() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _login() {
  if(_formKey.currentState?.validate() == false) return;

  }
}

import 'package:flutter/material.dart';
import 'package:movie_app/UI/Widget/custom_button.dart';
import 'package:movie_app/UI/Widget/custom_text_field.dart';
import 'package:movie_app/l10n/app_localizations.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/utils/app_styles.dart';
import 'package:movie_app/utils/assets_manager.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool donotShowPassword = true;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(AssetsManager.logo),
                CustomTextField(
                  hintText: AppLocalizations.of(context)!.email,
                  prefixIcon: Icon(Icons.email, color: AppColors.white),
                ),
                SizedBox(height: height * 0.02),
                CustomTextField(
                  obscureText: donotShowPassword,
                  hintText: AppLocalizations.of(context)!.password,
                  prefixIcon: Icon(Icons.lock, color: AppColors.white),
                  suffixIcon: IconButton(
                    onPressed: () =>
                        setState(() => donotShowPassword = !donotShowPassword),
                    icon: donotShowPassword
                        ? Icon(Icons.visibility_off, color: AppColors.white)
                        : Icon(Icons.visibility, color: AppColors.white),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      AppLocalizations.of(context)!.forget_password,
                      style: AppStyles.medium14Yellow,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.035),
                CustomButton(
                  text: AppLocalizations.of(context)!.login,
                  onPressed: () {},
                ),
                SizedBox(height: height * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.donot_have_account,
                      style: AppStyles.medium14White,
                    ),
                    SizedBox(width: width * 0.008),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context)!.create_one,
                        style: AppStyles.medium14Yellow,
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

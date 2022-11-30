import 'package:citrus_leaf_assessment/app/login/view/widgets/divider_widget.dart';
import 'package:citrus_leaf_assessment/app/login/view/widgets/email_validation.dart';
import 'package:citrus_leaf_assessment/app/login/view/widgets/login_text_form_field_widget.dart';
import 'package:citrus_leaf_assessment/app/login/view/widgets/login_text_widget.dart';
import 'package:citrus_leaf_assessment/app/login/view/widgets/need_account_widget.dart';
import 'package:citrus_leaf_assessment/app/login/view/widgets/other_login_widget.dart';
import 'package:citrus_leaf_assessment/app/login/view/widgets/password_validator.dart';
import 'package:citrus_leaf_assessment/app/login/view/widgets/remember_me_widget.dart';
import 'package:citrus_leaf_assessment/app/login/view_model/login_view_model.dart';
import 'package:citrus_leaf_assessment/app/utils/app_color.dart';
import 'package:citrus_leaf_assessment/app/utils/app_size.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final loginPro = Provider.of<LoginProvider>(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: height * .85,
              width: width,
              child: Form(
                key: loginPro.formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppSize.kHeight40,
                      const LoginTextWidget(
                        title: "LOGIN",
                        size: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      AppSize.kHeight50,
                      const LoginTextWidget(
                        title: "Email",
                        size: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      AppSize.kHeight5,
                      LoginTextFormFieldWidget(
                        controller: loginPro.emailEditingController,
                        validator: EmailValidation.emailValid(),
                      ),
                      AppSize.kHeight10,
                      const LoginTextWidget(
                        title: "Password",
                        size: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      AppSize.kHeight5,
                      LoginTextFormFieldWidget(
                        controller: loginPro.passwordEditingController,
                        validator: PassWordValidation.passWordValid(),
                        obscureText: loginPro.isHidden,
                        suffixIcon: Consumer<LoginProvider>(
                          builder: (context, value, _) {
                            return IconButton(
                              onPressed: () {
                                value.togglePasswordView();
                              },
                              icon: Icon(
                                value.isHidden
                                    ? (Icons.visibility)
                                    : (Icons.visibility_off),
                              ),
                              color: AppColor.kPinkColor,
                            );
                          },
                        ),
                      ),
                      AppSize.kHeight20,
                      const RememberMeWidget(),
                      AppSize.kHeight20,
                      Center(
                        child: Container(
                          height: height * .07,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                AppColor.kPinkColor,
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            onPressed: () {
                              loginPro.formValid(context);
                              loginPro.loginFunction(context);
                            },
                            child: const Text(
                              "LOGIN",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const LoginTextWidget(
                              title: "Forget Password?",
                              size: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColor.kGreyColor,
                            ),
                          ),
                        ],
                      ),
                      const DividerWidget(),
                      AppSize.kHeight10,
                      const OtherLoginWidget(),
                      const NeedAccountWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

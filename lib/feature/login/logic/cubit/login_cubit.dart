import 'dart:convert';
import 'package:dubli/core/helper/helper_const.dart';
import 'package:dubli/core/helper/local_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  var formKey = GlobalKey<FormState>();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    const url = '$firebaseUrl:signInWithPassword?key=$apiKey_2';
    final response = await http.post(
      Uri.parse(url),
      body: json.encode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );

    final responseData = json.decode(response.body);

    if (response.statusCode == 200) {
      LocalServices.saveData(
        key: 'userId',
        value: responseData['localId'],
      );
      checkUserEmailInUniHelper(useridHelper, useremailHelper);
       await getUserNameById(useridHelper, useremailHelper);
      emit(LoginSuccess());
    } else {
      if (responseData['error']['message'] == "INVALID_LOGIN_CREDENTIALS") {
        emit(LoginFailure(
          error: 'Wrong Email Or Password',
        ));
      }
    }
  }
}


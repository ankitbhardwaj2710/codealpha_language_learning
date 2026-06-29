import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  final AuthService _service = AuthService();

  bool isLoading = false;

  Future<void> login(
      String email,
      String password,
      BuildContext context,
      ) async {

    try {
      isLoading = true;
      notifyListeners();

      await _service.login(
        email: email,
        password: password,
      );

    } catch (e) {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );

    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signup(
      String email,
      String password,
      BuildContext context,
      ) async {

    try {
      isLoading = true;
      notifyListeners();

      await _service.signUp(
        email: email,
        password: password,
      );

    } catch (e) {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );

    } finally {

      isLoading = false;
      notifyListeners();

    }
  }

  Future<void> logout() async {
    await _service.logout();
  }
}
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

// Screen 1: Login (static, no interaction)
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        // Scroll view so nothing overflows on small screens
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          child: Column(
            children: [
              const SizedBox(height: 24),

              // Logo: dark circle with an image inside
              Container(
                width: 130,
                height: 130,
                padding: const EdgeInsets.all(32),
                decoration: const BoxDecoration(
                  color: AppColors.dark,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.contain,
                  // Shows an icon if the image file is missing
                  errorBuilder: (context, error, stackTrace) => const Icon(
                    Icons.restaurant,
                    color: Colors.white,
                    size: 56,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // App name
              Text(
                'PINOYSARSA\nFamous Filipino\nCuisine',
                textAlign: TextAlign.center,
                style: textTheme.titleMedium,
              ),
              const SizedBox(height: 40),

              // Email and password boxes
              const _InputBox(hint: 'Email'),
              const SizedBox(height: 16),
              const _InputBox(
                hint: 'Password',
                trailing: Icons.visibility_off_outlined,
              ),
              const SizedBox(height: 20),

              // Login button
              Container(
                width: double.infinity,
                height: 46,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.dark,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Text('Forgot Password?', style: textTheme.bodyMedium),
              const SizedBox(height: 40),

              // Checkbox + terms text (Row)
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.dark, width: 1.5),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Expanded keeps long text from overflowing the row
                  Expanded(
                    child: Text(
                      'I agree to the Terms of Service and Privacy Policy',
                      style: textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              // Sign up line (Row)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ", style: textTheme.bodyMedium),
                  Text('Sign up', style: textTheme.titleMedium),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// A static, styled text box (not a real input, since the screen is non-interactive)
class _InputBox extends StatelessWidget {
  const _InputBox({required this.hint, this.trailing});

  final String hint;
  final IconData? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.dark),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(hint, style: Theme.of(context).textTheme.bodySmall),
          ),
          if (trailing != null)
            Icon(trailing, size: 20, color: AppColors.textGrey),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/chateo_logo.png',
                  width: 700,
                  height: 700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Text(
                    'Connect easily with\nyour family and friends\nover countries',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 40),
                  _buildStartButton(context),
                ],
              ),
            ),
            _buildPolicySection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF365EFF),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () => _navigateToLogin(context),
        child: const Text(
          'Start Messaging',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildPolicySection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => _showTerms(context),
            child: const Text('Terms'),
          ),
          const Text('|'),
          TextButton(
            onPressed: () => _showPrivacyPolicy(context),
            child: const Text('Privacy Policy'),
          ),
        ],
      ),
    );
  }

  void _navigateToLogin(BuildContext context) {
    // Navigation implementation
  }

  void _showTerms(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Terms of Service'),
        content: const Text(
          'By using Chateo, you agree to comply with our terms and conditions.\n\n'
              '1. You must be at least 13 years old to use Chateo.\n'
              '2. You are responsible for your messages and interactions.\n'
              '3. Do not engage in illegal, harmful, or abusive behavior.\n'
              '4. We reserve the right to terminate accounts violating our policies.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          )
        ],
      ),
    );
  }

  void _showPrivacyPolicy(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Privacy Policy'),
        content: const Text(
          'Your privacy is important to us.\n\n'
              '1. We collect minimal data to provide better services.\n'
              '2. Your messages are encrypted for security.\n'
              '3. We do not sell your data to third parties.\n'
              '4. You can delete your account and data at any time.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          )
        ],
      ),
    );
  }
}

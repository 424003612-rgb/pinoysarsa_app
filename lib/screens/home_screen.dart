import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

// Screen 2: Home / Discover Recipe (static, no interaction)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header: Stack layers the back button over the welcome text
              SizedBox(
                width: double.infinity,
                child: Stack(
                  children: [
                    Padding(
                      // Leaves room so the text never goes under the button
                      padding: const EdgeInsets.only(right: 56),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'FAMOUS FILIPINO CUISINE',
                            style: textTheme.titleMedium,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Welcome to PinoySarsa,',
                            style: textTheme.titleLarge,
                          ),
                          Text(
                            '[Display Name]',
                            style: textTheme.titleLarge?.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Positioned pins the button to the top-right corner
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: AppColors.dark,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Search box (static)
              Container(
                width: 220,
                height: 44,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.dark),
                ),
                child: Text('Search', style: textTheme.bodyMedium),
              ),
              const SizedBox(height: 16),

              Text('Discover Recipe', style: textTheme.titleMedium),
              const SizedBox(height: 12),

              // Recipe cards
              const _RecipeCard(
                imagePath: 'assets/images/adobo.png',
                title: 'Adobo',
                description:
                    'A savory Filipino classic dish simmered in vinegar, soy sauce, garlic, and black peppercorns.',
              ),
              const _RecipeCard(
                imagePath: 'assets/images/sinigang.png',
                title: 'Sinigang',
                description:
                    'A sour and savory Filipino soup famous for its tamarind-infused broth and mixed fresh vegetables.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// One recipe card: image on top, title and description below
class _RecipeCard extends StatelessWidget {
  const _RecipeCard({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  final String imagePath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ClipRRect rounds the image corners
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
              // Grey placeholder if the image file is missing
              errorBuilder: (context, error, stackTrace) => Container(
                width: double.infinity,
                height: 150,
                color: Colors.grey.shade300,
                alignment: Alignment.center,
                child: const Icon(Icons.restaurant, size: 40, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(title, style: textTheme.titleLarge),
          const SizedBox(height: 4),
          Text(description, style: textTheme.bodySmall),
        ],
      ),
    );
  }
}
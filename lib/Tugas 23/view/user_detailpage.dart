import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Tugas%2023/model/model/user_model.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({super.key, required this.user});

  final Welcome user;

  @override
  Widget build(BuildContext context) {
    final String dob = user.dateOfBirth?.trim() ?? "";
    final String imageUrl = user.image.trim();
    final String houseText = houseValues.reverse[user.house] ?? "";
    final List<String> alternateList = user.alternateNames;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          user.name.isEmpty ? 'Detail' : user.name,
          style: const TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 202, 221),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.pink),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Images
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: imageUrl.isEmpty
                  ? Container(
                      width: 120,
                      height: 120,
                      color: Colors.pink.shade100,
                      child: const Icon(
                        Icons.person,
                        size: 56,
                        color: Colors.pink,
                      ),
                    )
                  : Image.network(
                      imageUrl,
                      width: 140,
                      height: 140,
                      fit: BoxFit.cover,
                    ),
            ),
            const SizedBox(height: 16),

            // Nama
            Text(
              user.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xFFE91E63),
              ),
            ),
            const SizedBox(height: 8),

            // Alternate Names
            if (alternateList.isNotEmpty)
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Alternate Names",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.pink.shade700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: alternateList
                            .where((e) => e.trim().isNotEmpty)
                            .map(
                              (e) => Chip(
                                label: Text(e),
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  255,
                                  232,
                                  240,
                                ),
                                side: BorderSide(
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    150,
                                    185,
                                  ),
                                ),
                                labelStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),

            // tanggal lahir
            if (dob.isNotEmpty) ...[
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.cake_outlined, size: 18, color: Colors.pink),
                  const SizedBox(width: 6),
                  Text(dob, style: TextStyle(color: Colors.pink.shade700)),
                ],
              ),
            ],

            const SizedBox(height: 24),

            // House (enum -> text)
            if (houseText.isNotEmpty) ...[
              const Text(
                'House:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                houseText, // contoh: "Gryffindor"
                style: const TextStyle(fontSize: 14, color: Colors.pink),
                textAlign: TextAlign.center,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

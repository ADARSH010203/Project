import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Information extends StatefulWidget {
  final String name;
  final String password;
  final String phone;
  final String gender;
  final String height;
  final String weight;
  final String blood;
  final String address;
  final String nationality;
  final String userName;
  final String dateOfBirth;

  const Information({
    super.key,
    required this.name,
    required this.password,
    required this.phone,
    required this.gender,
    required this.height,
    required this.weight,
    required this.dateOfBirth,
    required this.address,
    required this.blood,
    required this.nationality,
    required this.userName, required String UserName,
  });

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Details",
          style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.teal[700],
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal[700]!, Colors.teal[400]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Add functionality to update profile picture here
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Colors.teal[200]!, Colors.teal[500]!],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(4),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/profile.png",
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Text(
                  widget.name,
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal[900],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.teal.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    _buildInfoRow(Icons.person, 'Name:', widget.name),
                    _divider(),
                    _buildInfoRow(Icons.account_circle, 'Username:', widget.userName),
                    _divider(),
                    _buildInfoRow(Icons.lock, 'Password:', widget.password),
                    _divider(),
                    _buildInfoRow(Icons.phone, 'Phone:', widget.phone),
                    _divider(),
                    _buildInfoRow(Icons.male, 'Gender:', widget.gender),
                    _divider(),
                    _buildInfoRow(Icons.height, 'Height:', widget.height),
                    _divider(),
                    _buildInfoRow(Icons.fitness_center, 'Weight:', widget.weight),
                    _divider(),
                    _buildInfoRow(Icons.cake, 'Date of Birth:', widget.dateOfBirth),
                    _divider(),
                    _buildInfoRow(Icons.bloodtype, 'Blood Group:', widget.blood),
                    _divider(),
                    _buildInfoRow(Icons.home, 'Address:', widget.address),
                    _divider(),
                    _buildInfoRow(Icons.flag, 'Nationality:', widget.nationality),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal[400], size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Divider(
      color: Colors.teal.withOpacity(0.2),
      thickness: 1,
      height: 20,
    );
  }
}

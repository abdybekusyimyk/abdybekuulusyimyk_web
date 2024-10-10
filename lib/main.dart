import 'package:flutter/material.dart';

void main() {
  runApp(const MyResumeApp());
}

class MyResumeApp extends StatelessWidget {
  const MyResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        colorScheme: const ColorScheme.light(
          primary: Colors.black,
          onPrimary: Colors.black,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Syimyk Abdybek uulu - Flutter Developer"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: const SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                      'assets/images/my_photo.webp'), // Profile picture
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  "Syimyk Abdybek uulu",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  "Flutter Developer (Mid-level)",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ),
              SizedBox(height: 32),
              Text(
                "Contact Information",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Divider(color: Colors.black54),
              ListTile(
                leading: Icon(Icons.location_on, color: Colors.blue),
                title: Text("Osh, Kyrgyzstan",
                    style: TextStyle(color: Colors.black)),
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.blue),
                title: Text("+996 (708) 450282",
                    style: TextStyle(color: Colors.black)),
              ),
              ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text("abdybekuulusyimyk@gmail.com",
                    style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 32),
              Text(
                "Professional Summary",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Divider(color: Colors.black54),
              Text(
                "Experienced Flutter Developer with over 3 years of hands-on experience in mobile app development. Skilled in transforming concepts into high-quality, functional applications with a strong background in mentoring junior developers. Currently focused on building scalable, user-centric solutions in dynamic environments.",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(height: 32),
              Text(
                "Projects",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Divider(color: Colors.black54),
              ProjectWidget(
                title: "Student",
                description:
                    "An educational app designed to support students in Kyrgyzstan.",
                link:
                    "https://play.google.com/store/apps/details?id=student.kg",
              ),
              ProjectWidget(
                title: "Tilbil",
                description:
                    "A language learning app focused on the Kyrgyz language.",
                link: "https://play.google.com/store/apps/details?id=tilbil.kg",
              ),
              SizedBox(height: 32),
              Text(
                "Technical Skills",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Divider(color: Colors.black54),
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  SkillChip(label: "Flutter & Dart", icon: Icons.code),
                  SkillChip(
                      label: "State management (Bloc, GetX, Provider)",
                      icon: Icons.settings_applications),
                  SkillChip(
                      label: "Clean Architecture", icon: Icons.architecture),
                  SkillChip(
                      label:
                          "Design Principles (Design Patterns, OOP, SOLID Principles)",
                      icon: Icons.design_services),
                  SkillChip(
                      label: "Storage (SQLite, SharedPreferences, Hive)",
                      icon: Icons.storage),
                  SkillChip(
                      label: "Working with APIs (HTTP, Dio)", icon: Icons.http),
                  SkillChip(label: "Firebase", icon: Icons.cloud),
                  SkillChip(
                      label: "Version Control (Git, GitHub, GitLab, Bitbucket)",
                      icon: Icons.history),
                  SkillChip(label: "Design Tools (Figma)", icon: Icons.brush),
                  SkillChip(
                      label: "Project Management Tools (Trello, Jira)",
                      icon: Icons.task),
                ],
              ),
              SizedBox(height: 32),
              Text(
                "Languages",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Divider(color: Colors.black54),
              ListTile(
                leading: Icon(Icons.language, color: Colors.blue),
                title: Text("Russian: Upper Intermediate (B2)",
                    style: TextStyle(color: Colors.black)),
              ),
              ListTile(
                leading: Icon(Icons.language, color: Colors.blue),
                title: Text("English: Elementary (A2)",
                    style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 32),
              Text(
                "About Me",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Divider(color: Colors.black54),
              Text(
                "Passionate Flutter Developer with a strong foundation in mobile app development and a keen interest in mentoring and teaching. My commitment to creating user-friendly, high-performance applications is matched by my dedication to fostering the next generation of developers. I thrive in dynamic environments and am always eager to take on new challenges and opportunities for growth.",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;
  final String description;
  final String link;

  const ProjectWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.link});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: Colors.grey[200],
        child: ListTile(
          title: Text(title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black)),
          subtitle:
              Text(description, style: const TextStyle(color: Colors.black54)),
          trailing: const Icon(Icons.arrow_forward, color: Colors.blue),
          onTap: () => launchURL(link),
        ),
      ),
    );
  }

  void launchURL(String url) {
    // Implement the functionality to launch the URL.
  }
}

class SkillChip extends StatelessWidget {
  final String label;
  final IconData icon;

  const SkillChip({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: Colors.blue),
          const SizedBox(width: 5),
          Text(label, style: const TextStyle(color: Colors.black)),
        ],
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}

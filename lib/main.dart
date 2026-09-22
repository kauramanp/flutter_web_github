import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F7),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1100,
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  _buildHeader(),
                  const SizedBox(height: 24),

                  _buildSection(
                    title: 'Profile',
                    child: const Text(
                      'Mobile Application Developer with 8+ years of experience '
                      'building and delivering production-grade mobile applications '
                      'using Android, Kotlin, Flutter and Dart. Experienced in '
                      'designing scalable mobile architectures, integrating REST APIs, '
                      'real-time communication, BLE/device connectivity and building '
                      'applications across mobility, e-commerce, retail and smart-city '
                      'domains.',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.7,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                  _buildSkillsSection(),

                  _buildSection(
                    title: 'Professional Experience',
                    child: Column(
                      children: [
                        _buildExperience(
                          company: 'Intellisense Technology',
                          role: 'Android Application Developer',
                          duration: 'Aug 2024 – Feb 2026',
                          points: [
                            'Developed Android applications using Kotlin, MVVM and Clean Architecture.',
                            'Worked on taxi and smart-city application modules.',
                            'Implemented Bluetooth/BLE-based vehicle control and communication.',
                            'Integrated APIs using Retrofit and OkHttp.',
                            'Implemented dependency injection using Dagger/Hilt.',
                            'Worked with Socket programming for real-time communication.',
                            'Followed Agile development practices.',
                          ],
                          technologies: [
                            'Kotlin',
                            'Android',
                            'MVVM',
                            'Clean Architecture',
                            'BLE',
                            'Retrofit',
                            'Hilt',
                            'Sockets',
                          ],
                        ),
                        const SizedBox(height: 24),
                        _buildExperience(
                          company: 'O7 Solutions',
                          role: 'Senior Mobile Developer / Marketing Head',
                          duration: 'Aug 2020 – Jul 2024',
                          points: [
                            'Developed and maintained applications using Flutter and Android.',
                            'Worked on taxi, parking, e-commerce and retail applications.',
                            'Designed applications using scalable architecture patterns.',
                            'Integrated REST APIs and backend services.',
                            'Managed and mentored developers within the team.',
                            'Conducted technical training on Kotlin and Android development.',
                          ],
                          technologies: [
                            'Flutter',
                            'Dart',
                            'Android',
                            'Kotlin',
                            'MVVM',
                            'Retrofit',
                            'Firebase',
                          ],
                        ),
                        const SizedBox(height: 24),
                        _buildExperience(
                          company: 'Beebo IT Solutions',
                          role: 'Android Developer',
                          duration: 'May 2019 – Jul 2020',
                          points: [
                            'Developed Android applications for a taxi platform.',
                            'Took ownership of the driver application.',
                            'Implemented UI, API integration and application workflows.',
                            'Worked closely with backend teams.',
                          ],
                          technologies: [
                            'Android',
                            'Java',
                            'Kotlin',
                            'REST APIs',
                            'Firebase',
                          ],
                        ),
                        const SizedBox(height: 24),
                        _buildExperience(
                          company: 'Corevein Technology',
                          role: 'Android Developer',
                          duration: 'Nov 2017 – Apr 2019',
                          points: [
                            'Developed Android applications integrated with electronic and embedded devices.',
                            'Worked on device communication and application-level functionality.',
                            'Implemented Android UI and backend integrations.',
                          ],
                          technologies: [
                            'Android',
                            'Java',
                            'Bluetooth',
                            'Embedded Systems',
                          ],
                        ),
                      ],
                    ),
                  ),

                  _buildProjectsSection(),

                  _buildCommunitySection(),

                  _buildFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xFFEDE7F6),
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'AMANPREET KAUR',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Senior Android / Flutter Developer',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Mobile Application Engineer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 24),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 12,
              children: const [
                _ContactItem(
                  icon: Icons.location_on,
                  text: 'India',
                ),
                _ContactItem(
                  icon: Icons.email,
                  text: 'kauramanp1808@gmail.com',
                ),
                _ContactItem(
                  icon: Icons.link,
                  text: 'linkedin.com/in/kauramanp',
                ),
                _ContactItem(
                  icon: Icons.code,
                  text: 'GitHub',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillsSection() {
    return _buildSection(
      title: 'Technical Skills',
      child: Column(
        children: [
          _buildSkillCategory(
            '📱 Mobile Development',
            [
              'Flutter',
              'Dart',
              'Android',
              'Kotlin',
              'Jetpack Compose',
              'XML',
            ],
          ),
          _buildSkillCategory(
            '🏗️ Architecture',
            [
              'MVVM',
              'Clean Architecture',
              'MVI',
              'MVP',
              'Multi-module',
            ],
          ),
          _buildSkillCategory(
            '🔌 Backend & Integration',
            [
              'REST APIs',
              'Retrofit',
              'OkHttp',
              'WebSockets',
              'Firebase',
              'BLE',
            ],
          ),
          _buildSkillCategory(
            '⚙️ Tools & DevOps',
            [
              'Git',
              'GitHub',
              'GitHub Actions',
              'CI/CD',
              'Android Studio',
              'VS Code',
            ],
          ),
          _buildSkillCategory(
            '🧪 Testing',
            [
              'JUnit',
              'Mockito',
              'Espresso',
              'Flutter Test',
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCategory(
    String title,
    List<String> skills,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: skills
                .map(
                  (skill) => Chip(
                    label: Text(skill),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildExperience({
    required String company,
    required String role,
    required String duration,
    required List<String> points,
    required List<String> technologies,
  }) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            company,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            role,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.deepPurple,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            duration,
            style: const TextStyle(
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 18),
          ...points.map(
            (point) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '• ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      point,
                      style: const TextStyle(
                        height: 1.5,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Technologies',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: technologies
                .map(
                  (technology) => Chip(
                    label: Text(technology),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectsSection() {
    return _buildSection(
      title: 'Selected Projects',
      child: Column(
        children: [
          _buildProject(
            icon: Icons.local_taxi,
            title: 'Taxi & Mobility Applications',
            description:
                'Driver and passenger applications with real-time trip management, '
                'REST API integration, location services and real-time communication.',
            technologies:
                'Flutter • Dart • Kotlin • Android • Retrofit • Firebase • Sockets',
          ),
          _buildProject(
            icon: Icons.directions_car,
            title: 'SafeGuard360',
            description:
                'Smart-city and vehicle safety platform with SecureDrive, GuardSense, '
                'SafeVision and SafeCommunity modules. Worked on BLE/device communication.',
            technologies:
                'Kotlin • Android • BLE • MVVM • Hilt • Retrofit • Clean Architecture',
          ),
          _buildProject(
            icon: Icons.shopping_cart,
            title: 'Retail / POS Application',
            description:
                'Retail application featuring product and cart management, backend '
                'integration and thermal printer support for POS workflows.',
            technologies:
                'Flutter • Dart • Android • REST APIs • Thermal Printing',
          ),
        ],
      ),
    );
  }

  Widget _buildProject({
    required IconData icon,
    required String title,
    required String description,
    required String technologies,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.deepPurple.withOpacity(0.05),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 36,
            color: Colors.deepPurple,
          ),
          const SizedBox(width: 18),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    height: 1.5,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  technologies,
                  style: const TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommunitySection() {
    return _buildSection(
      title: 'Community & Leadership',
      child: Column(
        children: [
          _buildCommunityItem(
            icon: Icons.groups,
            title: 'GDG Jalandhar',
            subtitle: 'Organizer',
            description:
                'Organizing and contributing to developer-focused events, '
                'technical sessions and community activities.',
          ),
          _buildCommunityItem(
            icon: Icons.woman,
            title: 'Women Techmakers',
            subtitle: 'Ambassador',
            description:
                'Contributing to technical and community initiatives and '
                'encouraging knowledge sharing among developers.',
          ),
          _buildCommunityItem(
            icon: Icons.school,
            title: 'Technical Speaker & Mentor',
            subtitle: 'Developer Community',
            description:
                'Conducting technical sessions, mentoring developers and '
                'participating in developer events and hackathons.',
          ),
        ],
      ),
    );
  }

  Widget _buildCommunityItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required String description,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.only(bottom: 12),
      leading: CircleAvatar(
        backgroundColor: Colors.deepPurple.withOpacity(0.1),
        child: Icon(
          icon,
          color: Colors.deepPurple,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Text(
          '$subtitle\n$description',
          style: const TextStyle(
            height: 1.5,
          ),
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required Widget child,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 24),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            child,
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            'Build. Learn. Share. Keep Growing. 🚀',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Don’t just learn how to build an app. '
            'Learn how to build, test, collaborate and deploy it.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _ContactItem({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 18,
          color: Colors.deepPurple,
        ),
        const SizedBox(width: 6),
        Text(
          text,
          style: const TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    );
  }
  
}

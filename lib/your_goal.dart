import 'package:flutter/material.dart';

class YourGoal extends StatefulWidget {
  const YourGoal({super.key});

  @override
  _YourGoalState createState() => _YourGoalState();
}

class _YourGoalState extends State<YourGoal> {
  late PageController _pageController;
  int _currentPage = 0;

  List<String> images = ['slider1.png', 'slider2.png', 'slider3.png'];
  List<String> titles = ['Improve Shape', 'Lean & Tone', 'Lose a Fat'];
  List<String> texts = [
    'I have a low amount of body fat and need / want to build more muscle',
    'I’m “skinny fat”. look thin but have no shape. I want to add learn muscle in the right way',
    'I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass'
  ];

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.7);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SafeArea(
          child: Column(
            children: [
              const Text(
                'What is your goal',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text(
                'It will help us to choose the best\nprogram for you',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  color: Color(0xFF7B6F72),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return _buildContentPage(index);
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF9DCEFF),
                      Color(0xFF92A3FD),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(99),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0),
                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(double.maxFinite,
                          60), // Remplacez width et height par les valeurs souhaitées
                    ),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const YourGoal()));
                  },
                  child: const Text(
                    'Confirm',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContentPage(int pageIndex) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget? child) {
        double value = 1.0;
        if (_pageController.hasClients) {
          value = _pageController.page! - pageIndex;
          value = (1 - (value.abs() * 0.32)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height *
                0.6 *
                Curves.easeInOut.transform(value),
            width: MediaQuery.of(context).size.width *
                0.7 *
                Curves.easeInOut.transform(value),
            child: child,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF9DCEFF),
              Color(0xFF92A3FD),
            ],
          ),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
            child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Image.asset('assets/images/${images[pageIndex]}'),
              const SizedBox(height: 20),
              Text(
                titles[pageIndex],
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 50,
                child: Divider(
                  color: Colors.white,
                  thickness: 0.5,
                ),
              ),
              Text(
                texts[pageIndex],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  color: Colors.white,
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}

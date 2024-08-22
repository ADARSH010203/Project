import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:google_fonts/google_fonts.dart';

class BgmiCalc extends StatefulWidget {
  const BgmiCalc({super.key});

  @override
  State<BgmiCalc> createState() => _BgmiCalcState();
}

class _BgmiCalcState extends State<BgmiCalc> {
  double _height = 170;
  double _bmi = 0;
  int _weight = 60;
  int _age = 25;
  bool _isMale = true;

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    String bmiStatus;
    String bmiMessage;
    if (_bmi < 18.5) {
      bmiStatus = "Underweight";
      bmiMessage = "You need to gain some weight!";
    } else if (_bmi >= 18.5 && _bmi < 24.9) {
      bmiStatus = "Normal";
      bmiMessage = "Good job, keep it up!";
    } else if (_bmi >= 25 && _bmi < 29.9) {
      bmiStatus = "Overweight";
      bmiMessage = "You need to lose some weight!";
    } else {
      bmiStatus = "Obese";
      bmiMessage = "You need to lose significant weight!";
    }

    return Scaffold(
      appBar: AppBar(
        
        title: Text(
          "Calculate Your BMI",
          style: GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isMale = true;
                        });
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: _isMale ? Colors.blue : Colors.grey[400],
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Male",
                              style: GoogleFonts.roboto(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isMale = false;
                        });
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: !_isMale ? Colors.pink : Colors.grey[400],
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Female",
                              style: GoogleFonts.roboto(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                
                Container(
                  
                  height: screenHeight * 0.3,
                  width: screenWidth * 0.8,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(2, 2),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Select Height",
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Colors.blue[900],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${_height.toInt()} cm",
                        style: GoogleFonts.roboto(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Slider(
                        value: _height,
                        min: 100,
                        max: 200,
                        divisions: 100,
                        activeColor: Colors.black,
                        inactiveColor: Colors.blue[300],
                        onChanged: (value) {
                          setState(() {
                            _height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(2, 2),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight (kg)",
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Colors.blue[900],
                            ),
                          ),
                          Text(
                            "$_weight",
                            style: GoogleFonts.roboto(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black, width: 1.0),
                                  color: Colors.black,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _weight--;
                                    });
                                  },
                                  icon: Icon(Icons.remove, color: Colors.white),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black, width: 1.0),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.black,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _weight++;
                                    });
                                  },
                                  icon: Icon(Icons.add, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                                              height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(2, 2),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age (Years)",
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Colors.blue[900],
                            ),
                          ),
                          Text(
                            "$_age",
                            style: GoogleFonts.roboto(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black, width: 1.0),
                                  color: Colors.black,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _age--;
                                    });
                                  },
                                  icon: Icon(Icons.remove, color: Colors.white),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black, width: 1.0),
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.black,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _age++;
                                    });
                                  },
                                  icon: Icon(Icons.add, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: screenWidth * 0.4,
                  width: screenWidth * 0.8,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(2, 2),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        bmiStatus,
                        style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        _bmi.toStringAsFixed(1),
                        style: GoogleFonts.roboto(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        bmiMessage,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.blue[800],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _bmi = _weight / ((_height / 100) * (_height / 100));
                    });
                  },
                  child: Text(
                    "Calculate Result",
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Footer(),
                color: Color.fromARGB(255, 88, 185, 209),

      ),
    );
  }
}

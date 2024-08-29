import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:flutter_application_1/Home/login.dart';

class TodoScreen extends StatefulWidget {
  final String name1;
  const TodoScreen({super.key,required this.name1});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Map<String, dynamic>> todos = [];
  int selId = -1; // Selected id in case of edit mode
  TextEditingController txtTitle = TextEditingController();
  String selectedCategory = "WHAT'S UP";

  void _selectCategory(String category) {
    setState(() {
      selectedCategory = "Hello, ${widget.name1}, you selected " + category;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile = width < 800;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Todo App',
          style: GoogleFonts.poppins(
            fontSize: isMobile ? 20 : 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  selectedCategory,
                  style: GoogleFonts.poppins(
                    fontSize: isMobile ? 20 : 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "CATEGORIES",
                  style: GoogleFonts.poppins(
                    fontSize: isMobile ? 16 : 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildCategoryCard("EXERCISE", isMobile),
                    _buildCategoryCard("MEDITATION", isMobile),
                    _buildCategoryCard("FOOD", isMobile),
                    _buildCategoryCard("BUSINESS", isMobile),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TODAY'S TASKS",
                      style: GoogleFonts.poppins(
                        fontSize: isMobile ? 18 : 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Tasks",
                      style: GoogleFonts.poppins(
                        fontSize: isMobile ? 16 : 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: txtTitle,
                        decoration: InputDecoration(
                          hintText: 'Enter title of task',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: todos.length,
                  itemBuilder: (context, index) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 5,
                    color: todos[index]['isCompleted']
                        ? Color.fromRGBO(223, 241, 217, 1)
                        : Colors.white,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      value: todos[index]['isCompleted'],
                      onChanged: (bool? value) {
                        setState(() {
                          todos[index]['isCompleted'] = value!;
                        });
                      },
                      title: Text(
                        '${todos[index]['title']}',
                        style: GoogleFonts.poppins(
                          decoration: todos[index]['isCompleted']
                              ? TextDecoration.underline
                              : TextDecoration.none,
                          color: todos[index]['isCompleted']
                              ? Colors.black
                              : Colors.red,
                        ),
                      ),
                      secondary: SizedBox(
                        width: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildIconButton(Icons.edit, Colors.blue, () {
                              setState(() {
                                txtTitle.text = todos[index]['title'];
                                selId = todos[index]['id'];
                              });
                            }),
                            SizedBox(width: 10,),
                            _buildIconButton(Icons.delete, Colors.red, () {
                              setState(() {
                                todos.removeWhere(
                                    (element) => element['id'] == todos[index]['id']);
                              });
                            }),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (txtTitle.text.isNotEmpty) {
            if (selId == -1) {
              todos.add({
                "id": DateTime.now().microsecondsSinceEpoch,
                'title': txtTitle.text,
                "isCompleted": false
              });
            } else {
              int i = todos.indexWhere((element) => element['id'] == selId);
              if (i > -1) {
                var todo = todos[i];
                todos[i] = {
                  "id": todo['id'],
                  'title': txtTitle.text,
                  "isCompleted": todo['isCompleted']
                };
                selId = -1;
              }
            }
            txtTitle.clear();
            setState(() {});
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 88, 185, 209),
        child: Footer(),
      ),
    );
  }

  Widget _buildCategoryCard(String title, bool isMobile) {
    return GestureDetector(
      onTap: () => _selectCategory(title),
      child: Container(
        height: isMobile ? 70 : 80,
        width: isMobile ? 110 : 130,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 88, 185, 209),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: isMobile ? 14 : 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, Color color, VoidCallback onPressed) {
    return ClipOval(
      child: Material(
        color: color,
        child: IconButton(
          icon: Icon(icon),
          color: Colors.white,
          onPressed: onPressed,
        ),
      ),
    );
  }
}

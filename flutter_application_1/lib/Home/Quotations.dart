import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quotations extends StatefulWidget {
  const Quotations({super.key});

  @override
  State<Quotations> createState() => _QuotationsState();
}

class _QuotationsState extends State<Quotations> {
  final List<bool> _isExpanded = [false];

  void _handlePanelTap(int index, bool isExpanded) {
    setState(() {
      _isExpanded[index] = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quotations",
          style: GoogleFonts.roboto(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              
              child: Card(
                color: Colors.amber,
              // surfaceTintColor: Colors.black12,  
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  
                ),
                // color: Color.fromARGB(255, 20, 156, 219),
                // color:Colors.red,
                // shadowColor: Colors.red,
                child: ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    _handlePanelTap(0, isExpanded);
                  },
                  expandedHeaderPadding: EdgeInsets.all(10),
                  elevation: 1,
                  children: [
                    
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          
                          title: Text(
                            "Success Quotess",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
                              SizedBox(width: 8),
                              Icon(Icons.add),
                            ],
                          ),
                        );
                      },
                      body: Column(
                        children: [
                          ListTile(
                            title: Text("The best way to predict the future is to create it."),
                          ),
                          ListTile(
                            title: Text("Hello"),
                          ),
                        ],
                      ),
                      isExpanded: _isExpanded[0],
                    ),
                  ],
                ),
                
              ),
            ),Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              
              child: Card(
                color: Colors.amber,
              // surfaceTintColor: Colors.black12,  
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  
                ),
                // color: Color.fromARGB(255, 20, 156, 219),
                // color:Colors.red,
                // shadowColor: Colors.red,
                child: ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    _handlePanelTap(0, isExpanded);
                  },
                  expandedHeaderPadding: EdgeInsets.all(10),
                  elevation: 1,
                  children: [
                    
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          
                          title: Text(
                            "Positive Quotes",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
                              SizedBox(width: 8),
                              Icon(Icons.add),
                            ],
                          ),
                        );
                      },
                      body: Column(
                        children: [
                          ListTile(
                            title: Text("The best way to predict the future is to create it."),
                          ),
                          ListTile(
                            title: Text("Hello"),
                          ),
                        ],
                      ),
                      isExpanded: _isExpanded[0],
                    ),
                  ],
                ),
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              
              child: Card(
                color: Colors.amber,
              // surfaceTintColor: Colors.black12,  
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  
                ),
                // color: Color.fromARGB(255, 20, 156, 219),
                // color:Colors.red,
                // shadowColor: Colors.red,
                child: ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    _handlePanelTap(0, isExpanded);
                  },
                  expandedHeaderPadding: EdgeInsets.all(10),
                  elevation: 1,
                  children: [
                    
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          
                          title: Text(
                            "Motivational Quotes",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
                              SizedBox(width: 8),
                              Icon(Icons.add),
                            ],
                          ),
                        );
                      },
                      body: Column(
                        children: [
                          ListTile(
                            title: Text("The best way to predict the future is to create it."),
                          ),
                          ListTile(
                            title: Text("Hello"),
                          ),
                        ],
                      ),
                      isExpanded: _isExpanded[0],
                    ),
                  ],
                ),
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              
              child: Card(
                color: Colors.amber,
              // surfaceTintColor: Colors.black12,  
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  
                ),
                // color: Color.fromARGB(255, 20, 156, 219),
                // color:Colors.red,
                // shadowColor: Colors.red,
                child: ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    _handlePanelTap(0, isExpanded);
                  },
                  expandedHeaderPadding: EdgeInsets.all(10),
                  elevation: 1,
                  children: [
                    
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          
                          title: Text(
                            "Blissfull Quotes",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
                              SizedBox(width: 8),
                              Icon(Icons.add),
                            ],
                          ),
                        );
                      },
                      body: Column(
                        children: [
                          ListTile(
                            title: Text("The best way to predict the future is to create it."),
                          ),
                          ListTile(
                            title: Text("Hello"),
                          ),
                        ],
                      ),
                      isExpanded: _isExpanded[0],
                    ),
                  ],
                ),
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              
              child: Card(
                color: Colors.amber,
              // surfaceTintColor: Colors.black12,  
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  
                ),
                // color: Color.fromARGB(255, 20, 156, 219),
                // color:Colors.red,
                // shadowColor: Colors.red,
                child: ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    _handlePanelTap(0, isExpanded);
                  },
                  expandedHeaderPadding: EdgeInsets.all(10),
                  elevation: 1,
                  children: [
                    
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          
                          title: Text(
                            "Self-Love Quotes",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
                              SizedBox(width: 8),
                              Icon(Icons.add),
                            ],
                          ),
                        );
                      },
                      body: Column(
                        children: [
                          ListTile(
                            title: Text("The best way to predict the future is to create it."),
                          ),
                          ListTile(
                            title: Text("Hello"),
                          ),
                        ],
                      ),
                      isExpanded: _isExpanded[0],
                    ),
                  ],
                ),
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              
              child: Card(
                color: Colors.amber,
              // surfaceTintColor: Colors.black12,  
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  
                ),
                // color: Color.fromARGB(255, 20, 156, 219),
                // color:Colors.red,
                // shadowColor: Colors.red,
                child: ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    _handlePanelTap(0, isExpanded);
                  },
                  expandedHeaderPadding: EdgeInsets.all(20),
                  elevation: 1,
                  children: [
                    
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          
                          title: Text(
                            "Inspirational Quotes",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            
                          ),
                          trailing: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
                              SizedBox(height: 6),
                              IconButton(onPressed: (){
                                // isExpanded ? Icons.expand_less:Icons.expand_more;
                              }, icon: Icon(Icons.add)),
                              
                              IconButton(onPressed: (){
                                isExpanded ? Icons.expand_less:Icons.expand_more;
                              }, icon: Icon(Icons.more)),
                            ],
                          ),
                        );
                      },
                      body: Column(
                        children: [
                          ListTile(
                            title: Text("The best way to predict the future is to create it."),
                          ),
                          ListTile(
                            title: Text("Hello"),
                          ),
                        ],
                      ), 
                      isExpanded: _isExpanded[0],
                    ),
                  ],
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

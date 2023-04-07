import 'package:flutter/material.dart';

class MyAppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBarWidget({Key? key}) : super(key: key);

  @override
  MyAppBarWidgetState createState() => MyAppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class MyAppBarWidgetState extends State<MyAppBarWidget> {
  bool isDarkMode = false;
  bool isSearching = false;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return isSearching == false
        ? AppBar(
            elevation: 2,
            title: Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'assets/logo/Cipherschools_icon.png',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3),
                  child: Text(
                    'ClipherSchool',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                icon: Icon(
                  isDarkMode ? Icons.light_mode : Icons.dark_mode,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    isDarkMode = !isDarkMode;
                    // You can use some package to apply theme based on the isDarkMode flag
                  });
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    // Clear the text field when search icon is pressed
                    isSearching = true;
                  });
                },
              ),
            ],
            centerTitle: false,
          )
        : TextFormField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                icon: const Icon(Icons.cancel),
                onPressed: () {
                  setState(() {
                    // Clear the text field when cancel icon is pressed
                    searchController.clear();
                    isSearching = false;
                  });
                },
              ),
            ),
            onFieldSubmitted: (String value) {
              setState(() {
                // Do something with the value
                isSearching = false;
              });
            },
          );
  }
}

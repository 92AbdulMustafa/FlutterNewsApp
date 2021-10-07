import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String? value;
  @override
  Widget build(BuildContext context) {
    final TextEditingController searchcontroller = TextEditingController();

    void search() {
      final String searchedText = searchcontroller.text;
    }

    final categories = ['All', 'Headlines', 'Sports', 'Stock Market'];

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: [
            SizedBox(
              width: 150,
              child: DropdownButton<String>(
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                value: categories[0],
                items: categories.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
               Padding(
                padding:const EdgeInsets.all(10),
                child: FittedBox(
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: TextFormField(
                      controller: searchcontroller,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed:search,icon:const Icon(Icons.search)),
                        labelText: 'Search News',
                        border:const OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Column(
                    children: [

                    ],
                  ))
            ],
          ),
        ));
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ));
}

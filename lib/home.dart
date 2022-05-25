import 'package:flutter/material.dart';

class Category {
  final String name;
  final String image;
  Category({required this.name, required this.image});
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
            title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: const TextField(
            decoration:
                InputDecoration(hintText: "search", icon: Icon(Icons.search)),
          ),
        )),
        body: Container(
          child: Column(
            children:[LocationFilter(),
const Divider(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            CategoryGrid(),
            ]
            
          ),
        ));
  }
}

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Category> categories = [
      Category(name: "dice1", image: 'assets/1.png'),
      Category(name: "dice2", image: 'assets/2.png'),
      Category(name: "dice3", image: 'assets/3.png'),
      Category(name: "dice4", image: 'assets/4.png'),
      Category(name: "dice5", image: 'assets/5.png'),
      Category(name: "dice6", image: 'assets/6.png'),
    ];
    return Container(
        child: Expanded(
            child: GridView.count(
      crossAxisCount: 3,
      children: List.generate(categories.length, (index) {
        return Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                categories[index].image,
                height: 55,
              ),
              SizedBox(
                height: 20,
              ),
              Text(categories[index].name)
            ],
          ),
        );
      }),
    )));
  }
}

class LocationFilter extends StatelessWidget {
  const LocationFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(border: Border.all()),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(children: const [
                Icon(
                  Icons.location_on,
                  color: Color.fromARGB(255, 5, 150, 24),
                  size: 30,
                ),
                Text(
                  "All Of Gana",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold),
                )
              ]),
            ),
            const Text("Change Location",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 6, 28, 124),
                  fontWeight: FontWeight.bold,
                )),
          ],
        ));
  }
}

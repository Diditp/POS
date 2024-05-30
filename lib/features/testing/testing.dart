import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({super.key, required this.title});

  final String title;

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }

  void _decrement() {
    setState(() {
      counter--;
    });
    if (counter <= 0) {
      counter = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: GridView(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          spacing: 10,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: const Icon(
                                CupertinoIcons.barcode_viewfinder,
                                size: 70,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Scan Product barcode or search here manually",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    width: 500,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              239, 239, 239, 1)),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Search Product',
                                        border: const OutlineInputBorder(),
                                        suffixIcon: Icon(
                                          Icons.search,
                                          color: Colors.blueGrey[900],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Scan Product barcode or search here manually",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                width: 500,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: const Color.fromRGBO(
                                          239, 239, 239, 1)),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search Product',
                                    border: const OutlineInputBorder(),
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color: Colors.blueGrey[900],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Builder(builder: (context) {
                List images = [
                  "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                  "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                  "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                ];
                return CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  items: images.map((imageUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(6.0),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                imageUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                );
              }),
              LayoutBuilder(
                builder: (context, constraint) {
                  List items = [
                    {
                      'id': 1,
                      'category_name': 'Fashion',
                    },
                    {
                      'id': 2,
                      'category_name': 'Elektronik',
                    },
                    {
                      'id': 3,
                      'category_name': 'Kesehatan',
                    },
                    {
                      'id': 4,
                      'category_name': 'Kecantikan',
                    },
                    {
                      'id': 5,
                      'category_name': 'Olahraga',
                    },
                    {
                      'id': 6,
                      'category_name': 'Makanan',
                    },
                    {
                      'id': 7,
                      'category_name': 'Komputer',
                    },
                    {
                      'id': 8,
                      'category_name': 'Rumah Tangga',
                    },
                    {
                      'id': 9,
                      'category_name': 'Hobi',
                    },
                    {
                      'id': 10,
                      'category_name': 'Mainan',
                    },
                  ];
                  return Wrap(
                    children: List.generate(
                      items.length,
                      (index) {
                        var item = items[index];
                        bool selected = index == 0;
                        return Card(
                          color: selected ? Colors.orange : null,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                              vertical: 4.0,
                            ),
                            child: Text(
                              "${item["category_name"]}",
                              style: const TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 160.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://i.ibb.co/dGcQ5bw/photo-1549692520-acc6669e2f0c-ixlib-rb-1-2.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "PRODUCTIVITY",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "3 days ago",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text(
                              "7 Skills of Highly Effective Programmers",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 12.0,
                                  backgroundColor: Colors.grey[200],
                                  backgroundImage: const NetworkImage(
                                    "https://i.ibb.co/sqRTGfL/photo-1514543250559-83867827ecce-ixlib-rb-1-2.jpg",
                                  ),
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                const Expanded(
                                  child: Text(
                                    "Ryan Blink",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Read more",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your balance",
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  "€53,000",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "+55%",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: const Icon(
                          Icons.wallet,
                          size: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        margin: const EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16.0),
                          ),
                          color: Colors.blue[400],
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6.0),
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.green[800],
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    12.0,
                                  ),
                                ),
                              ),
                              child: const Text(
                                "PROMO",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Roti bakar Cimanggis",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "8.1 km",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                const Icon(
                                  Icons.circle,
                                  size: 4.0,
                                ),
                                const SizedBox(
                                  width: 4.0,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange[400],
                                  size: 16.0,
                                ),
                                const Text(
                                  "4.8",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            const Text(
                              "Bakery & Cake . Breakfast . Snack",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            const Text(
                              "€24",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    backgroundImage: const NetworkImage(
                      "https://i.ibb.co/xgwkhVb/740922.png",
                    ),
                  ),
                  title: const Text("Apple"),
                  subtitle: const Text("15 USD"),
                  trailing: SizedBox(
                    width: 120.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          radius: 12.0,
                          child: Center(
                            child: IconButton(
                              onPressed: _decrement,
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 9.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "$counter",
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          radius: 12.0,
                          child: Center(
                            child: IconButton(
                              onPressed: _increment,
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 9.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraint) {
                  List items = [
                    {
                      "id": 1,
                      "photo":
                          "https://i.ibb.co/dG68KJM/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                      "product_name": "Frenzy Pizza",
                      "price": 25,
                      "category": "Food",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    },
                    {
                      "id": 2,
                      "photo":
                          "https://i.ibb.co/mHtmhmP/photo-1521305916504-4a1121188589-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                      "product_name": "Beef Burger",
                      "price": 22,
                      "category": "Food",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    },
                    {
                      "id": 3,
                      "photo":
                          "https://images.unsplash.com/photo-1625869016774-3a92be2ae2cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                      "product_name": "Seperait",
                      "price": 33,
                      "category": "Drink",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    },
                    {
                      "id": 4,
                      "photo":
                          "https://images.unsplash.com/photo-1578160112054-954a67602b88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                      "product_name": "Fried Rice",
                      "price": 31,
                      "category": "Food",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    },
                    {
                      "id": 5,
                      "photo":
                          "https://i.ibb.co/mHCx9Nj/photo-1517487881594-2787fef5ebf7-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                      "product_name": "Terrano Milk",
                      "price": 32,
                      "category": "Drink",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    },
                    {
                      "id": 6,
                      "photo":
                          "https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                      "product_name": "Fried Chicken",
                      "price": 49,
                      "category": "Food",
                      "description":
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    },
                  ];
                  double spacing = 5;
                  double size = (constraint.biggest.width - spacing) / 2;

                  return Wrap(
                    spacing: spacing,
                    runSpacing: spacing,
                    children: List.generate(
                      items.length,
                      (index) {
                        return Container(
                          height: size,
                          width: size,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1525201548942-d8732f6617a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                color: Colors.black26,
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: CircleAvatar(
                                    backgroundColor: Theme.of(context)
                                        .cardColor
                                        .withOpacity(0.6),
                                    child: const Icon(
                                      Icons.favorite,
                                      size: 14.0,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  color: Colors.black54,
                                  width: MediaQuery.of(context).size.width,
                                  padding: const EdgeInsets.all(12.0),
                                  child: const Text(
                                    "How to play guitar for beginner",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              Container(
                height: 164.0,
                width: 164.0,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1626982680798-ec99e2aef288?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      color: Colors.black26,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).cardColor.withOpacity(0.6),
                          child: const Icon(
                            Icons.favorite,
                            size: 14.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 164.0,
                width: 164.0,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1525201548942-d8732f6617a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      color: Colors.black26,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).cardColor.withOpacity(0.6),
                          child: const Icon(
                            Icons.favorite,
                            size: 14.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.black54,
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          "How to play guitar for beginner",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SegmentedButton(
                showSelectedIcon: false,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                segments: <ButtonSegment>[
                  ButtonSegment(
                    value: "Day",
                    label: Text(
                      'Day',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  ButtonSegment(
                    value: "Month",
                    label: Text(
                      'Month',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  ButtonSegment(
                    value: "Year",
                    label: Text(
                      'Year',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
                selected: const {"Month"},
                onSelectionChanged: (Set newSelection) {},
              ),
              SegmentedButton(
                segments: const <ButtonSegment>[
                  ButtonSegment(
                    value: "Pending",
                    label: Text('Pending'),
                    icon: Icon(Icons.timer),
                  ),
                  ButtonSegment(
                    value: "OnGoing",
                    label: Text('OnGoing'),
                    icon: Icon(Icons.run_circle),
                  ),
                  ButtonSegment(
                    value: "Done",
                    label: Text('Done'),
                    icon: Icon(Icons.check_box),
                  ),
                ],
                selected: const {"Pending"},
                onSelectionChanged: (Set newSelection) {},
              ),
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(),
                child: LayoutBuilder(builder: (context, constraints) {
                  List<String> items = <String>[
                    'Angela',
                    'Ardy',
                    'Fizfat',
                    'Dita',
                    'Rimuru',
                    'Deny',
                    'John',
                    'Roy',
                  ];

                  return Autocomplete<String>(
                    fieldViewBuilder: (context, textEditingController,
                        focusNode, onFieldSubmitted) {
                      return TextField(
                        controller: textEditingController,
                        focusNode: focusNode,
                        onSubmitted: (text) => onFieldSubmitted(),
                        decoration: const InputDecoration(
                          labelText: 'Search',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: "Let's start with some characters",
                        ),
                      );
                    },
                    initialValue: const TextEditingValue(
                      text: "Roy",
                    ),
                    onSelected: (String value) {
                      //selected value
                    },
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      if (textEditingValue.text == '') {
                        return const Iterable<String>.empty();
                      }
                      return items.where((String option) {
                        return option
                            .contains(textEditingValue.text.toLowerCase());
                      });
                    },
                  );
                }),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 160.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://i.ibb.co/JpdK5ch/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Pepperoni Pizza",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 10.0,
                                  child: Icon(
                                    CupertinoIcons.zzz,
                                    size: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  radius: 10.0,
                                  child: Icon(
                                    Icons.thumb_up,
                                    size: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "256 Cal",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                                Text(
                                  "P/F/C: 12/10/31",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                                Text(
                                  "53.8 °C",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "€9",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 6.0,
                                ),
                                const Text(
                                  "€12",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.red,
                                  ),
                                ),
                                const Spacer(),
                                Transform.scale(
                                  scale: 0.8,
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton.icon(
                                    icon: const Icon(CupertinoIcons.cart),
                                    label: const Text("Add to Cart"),
                                    style: ElevatedButton.styleFrom(),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Builder(
                builder: (context) {
                  String value = 'Female';
                  var items = [
                    'Female',
                    'Male',
                  ];
                  return Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gender",
                          style:
                              Theme.of(context).inputDecorationTheme.labelStyle,
                        ),
                        DropdownButton(
                          isExpanded: true,
                          value: value,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            debugPrint("newValue: $newValue");
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

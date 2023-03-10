import 'package:flutter/material.dart';

import 'list_item.dart';
class ProfileFacebook extends StatelessWidget {
  const ProfileFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          centerTitle: true,
          title: Text(
            'KEAT BUNTHOEUN',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          actions: [
            Icon(
              Icons.edit,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.search,
              color: Colors.black,
            ),
          ]),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 230,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'KEAT BUNTHOEUN',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.blue),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Text(
                                      'Add to stort',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextButton(
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(255, 194, 199, 211)),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                    Text(
                                      'Edit profile',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextButton(
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 194, 199, 211)),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 1,
                        height: 5,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ListItem(
                        icon: Icons.business_center,
                        text: 'Works at Aquarius Hotel & Urban Resort',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ListItem(
                        icon: Icons.school,
                        text: 'Went to Chea Sim Takeo High School',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ListItem(
                        icon: Icons.home,
                        text: 'Lives in Takeo, Taker, Cambodia',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ListItem(
                        icon: Icons.location_on,
                        text: 'From Takeo',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ListItem(
                        icon: Icons.favorite_rounded,
                        text: 'In a relationship with Raksmey Thoeun',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ListItem(
                        icon: Icons.more_horiz,
                        text: 'See your About info',
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _image(istrue: 0),
                            SizedBox(
                              width: 8,
                            ),
                            _image(istrue: 1),
                            SizedBox(
                              width: 8,
                            ),
                            _image(istrue: 1),
                            SizedBox(
                              width: 8,
                            ),
                            _image(istrue: 1),
                            SizedBox(
                              width: 8,
                            ),
                            _image(istrue: 1),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 100,
              left: 10,
              child: Stack(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/user.JPG'),
                          fit: BoxFit.cover),
                      border: Border.all(color: Colors.white, width: 3),
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        color: Colors.grey,
                      ),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        size: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _image({int istrue = 0}) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 12,
      ),
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[300],
      ),
      child: istrue == 0 ? Icon(Icons.add) : null,
    );
  }
}

import 'package:fitnessapp/diff_project_code/quick_search.dart';
import 'package:flutter/material.dart';

class HotelSearchScreen extends StatefulWidget {
  const HotelSearchScreen({super.key});

  @override
  State<HotelSearchScreen> createState() => _HotelSearchScreenState();
}

class _HotelSearchScreenState extends State<HotelSearchScreen> {
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Color(0xff7a71ad), Color(0xffaea8dd)])),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 20,
        ),
        title: const Text(
          'Hotel Search',
          textAlign: TextAlign.justify,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: size.height * 0.53,
                width: double.infinity,
                // color: Colors.green,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const Text(
                      'Choose Place',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                      child: TextFormField(
                        obscureText: false,
        
                        // initialValue: 'Input text',
                        decoration: InputDecoration(
                            hintText: 'Type here...',
                            disabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            suffixIcon:
                                const Icon(Icons.search, color: Colors.grey),
                            fillColor: Colors.white,
                            filled: true,
                            labelStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 0.5),
                                borderRadius: BorderRadius.circular(8))),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Check In',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            SizedBox(
                              height: size.height * 0.07,
                              width: size.width * 0.42,
                              child: TextFormField(
                                obscureText: false,
        
                                // initialValue: 'Input text',
                                decoration: InputDecoration(
                                    hintText: 'Type here...',
                                    disabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    suffixIcon: const Icon(Icons.calendar_month,
                                        color: Colors.grey),
                                    fillColor: Colors.white,
                                    filled: true,
                                    labelStyle:
                                        const TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 0.5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 0.5),
                                        borderRadius: BorderRadius.circular(8))),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Check Out',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            SizedBox(
                              height: size.height * 0.07,
                              width: size.width * 0.42,
                              child: TextFormField(
                                obscureText: false,
        
                                // initialValue: 'Input text',
                                decoration: InputDecoration(
                                    hintText: 'Type here...',
                                    disabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    suffixIcon: const Icon(Icons.calendar_month,
                                        color: Colors.grey),
                                    fillColor: Colors.white,
                                    filled: true,
                                    labelStyle:
                                        const TextStyle(color: Colors.grey),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 0.5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 0.5),
                                        borderRadius: BorderRadius.circular(8))),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Guests',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Container(
                              width: size.width * 0.6,
                              padding: const EdgeInsets.only(left: 4, right: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.grey, width: 0.5)),
                              child: DropdownButton(
                                  underline: SizedBox(),
        
                                  // focusColor: const Color(AppColors.primary),
                                  elevation: 4,
                                  isExpanded: true,
                                  hint: const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '2 adults, 1 children',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  }),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Rooms',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Container(
                              width: size.width * 0.3,
                              padding: const EdgeInsets.only(left: 4, right: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.grey, width: 0.5)),
                              child: DropdownButton(
                                  underline: SizedBox(),
        
                                  // focusColor: const Color(AppColors.primary),
                                  elevation: 4,
                                  isExpanded: true,
                                  hint: const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '1',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                      child: Container(
                        height: size.height * 0.057,
                        width: size.width * 0.65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: const LinearGradient(
                                colors: [Color(0xff7a71ad), Color(0xffaea8dd)])),
                        child: const Center(
                            child: Text(
                          'Search Hotel',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
           const   QuickSearch(),
           SizedBox(height: size.height*0.5,),
        
          ],
        ),
      ),
    );
  }
}

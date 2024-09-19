import 'package:flutter/material.dart';

import 'widget/categories_list.dart';
import 'widget/more_button.dart';
import 'widget/search_box.dart';
import 'widget/slider.dart';
import 'widget/top_deals_on_electronic.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Row(
            children: [
              Image.asset("assets/images/logo.png", width: 130, height: 26),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/notofication.png"),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/more.png"),
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchBoxHomePageWidget(),
            const SliderWidget(),
            MoreButton(
              title: "Categories",
              onTap: () {},
            ),
            const HomeCategoriesListWidgets(),
            const TopDealsElectronicWidget(),
            
          ],
        ),
      ),
    );
  }
}

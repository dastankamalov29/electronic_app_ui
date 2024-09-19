import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../models/product_model.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final pageController = PageController();
    final List<String> productImage = [
      "assets/images/mac1.png",
      "assets/images/mac2.png",
      "assets/images/Apple-MacBook-Pro-16-inch-2 1.png",
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomNavigationBar(size, context),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        titleSpacing: 0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/search.png",
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/cart.png",
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30, top: 20),
              width: size.width,
              height: 250,
              child: PageView.builder(
                itemCount: productImage.length,
                controller: pageController,
                itemBuilder: (context, index) {
                  return Image.asset(
                    productImage[index],
                    fit: BoxFit.contain,
                  );
                },
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: productImage.length,
                effect: const WormEffect(
                    dotWidth: 16, dotHeight: 7, activeDotColor: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 8),
                    child: Text(
                      "Apple MacBook Pro Core i9 9th Gen(16 GB/1TB SSD/Mac OS Catalina/4 GB graphic",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 18),
                    ),
                  ),
                  Text(
                    "See more",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          children: [
                            SizedBox(width: 8),
                            Text(
                              "4.2",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "90 Rating",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                        ),
                        child: Text(
                          "₹2,24,900",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontWeight: FontWeight.w900, fontSize: 24),
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Divider(
                    thickness: 2,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Available Offers",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                  ),
                        ),
                        const SizedBox(height: 15),
                        availableOfferText(
                            "5% Unlimited Cashback on Flipkart Axis Bank Credit Card"),
                        availableOfferText(
                            "Flat X30 discount on first prepaid transaction using RuPay debit card, minimum order value"),
                        availableOfferText(
                            "₹30 Off on first prepaid transaction using UPI. Minimum order value 750/- "),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20, left: 30),
                          child: Text(
                            "+5 more",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            containerWidget(context, "Free Delivery"),
                            containerWidget(context, "No cost EMI\n₹22,212/ month."),
                            containerWidget(context, "Product\nExchange")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }

  Container containerWidget(BuildContext context, String text) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.black, fontSize: 11),
        ),
      ),
    );
  }

  Padding availableOfferText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Image.asset(
            "assets/images/affer.png",
            height: 18,
            width: 18,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  SizedBox bottomNavigationBar(Size size, BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 65,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  right: BorderSide(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
              ),
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.share,
                    size: 20,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    "Share",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 65,
              padding: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.add, size: 20),
                  const SizedBox(width: 6),
                  Text(
                    "Add to compare",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

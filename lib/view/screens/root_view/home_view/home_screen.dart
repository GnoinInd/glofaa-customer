import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:glofa_customer/model/utils/resource/color_resource.dart';
import 'package:glofa_customer/model/utils/resource/dimensions_resource.dart';
import 'package:glofa_customer/model/utils/resource/image_resource.dart';
import 'package:glofa_customer/model/utils/resource/style_resource.dart';
import 'package:glofa_customer/view/screens/base_view/base_view_screen.dart';
import 'package:glofa_customer/view_model/controllers/root_view_controller/home_controller.dart';
import '../../../widgets/reusable_widget/reusable_widget.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(viewControl: HomeController(),
        onPageBuilder: (BuildContext context, HomeController controller) => _buildHomeView(context,controller));
  }
}
List<int> listItem = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
List<int> listItem2 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
List<int> listItem3 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
List<int> listItem4 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
List<int> listItem5 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
List<int> listItem6 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
List<int> listItem7 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
List<int> listItem8 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
List<int> listItem9 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
bool _isPlaying = false;

Widget _buildHomeView(BuildContext context , HomeController controller){
  return ListView(
    padding:const EdgeInsets.symmetric(horizontal: 00,vertical:40),
    children: [
      plusContainer(context),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 42,top: 22,bottom: 22),
        child: searchContainer(context),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16),
        child: Text(
          "Action Area IIC",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16),
        child: Row(
          children: [
            Text("North Block - Newtown - Kolkata - Ne...",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),),
            const Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
      fieldsContainer(),
      sliderImages(),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 18,bottom: 33),
        child: Row(
          children: [
            CommonContainer(context, ImageResource.instance.womensSpa,"Women's\nSalon, Spa &\nLaser Clinic"),
            const Spacer(),
            CommonContainer(context, ImageResource.instance.mensSalon,"Men's Salon &\nMassage"),
            const Spacer(),
            CommonContainer(context, ImageResource.instance.acApplience,"AC &\nAppliance\nRepair"),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,bottom: 33),
        child: Row(
          children: [
            CommonContainer(context, ImageResource.instance.cleaningPestcontrol,"Women's\nSalon, Spa &\nLaser Clinic"),
            const Spacer(),
            CommonContainer(context, ImageResource.instance.electricianPlumber,"Men's Salon &\nMassage"),
            const Spacer(),
            CommonContainer(context, ImageResource.instance.housePainter,"AC &\nAppliance\nRepair"),
          ],
        ),
      ),
      dividerStyle(),
      Container(
        height: 73,
        width: double.infinity,
        margin: const EdgeInsets.only(left: 16,right: 16,top: 18,bottom: 28),
        decoration: BoxDecoration(
          color: ColorResource.roWaterContainerColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text("Native by Glofa",style: StyleResource.instance.styleBold(DimensionResource.fontSizeSmallTo, ColorResource.black),)),
                  Center(child: Text("RO Water Purifiers & Smart Locks",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeExtraSmall, ColorResource.black),))
                ],
              ),

            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageResource.instance.roWater),
                ],
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text("Thoughtful curations",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16,bottom: 20),
        child: Text("of our finest experiences",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),),
      ),
      Container(
        margin: EdgeInsets.only(top: 18,bottom:39),
        height: 165,
        width: double.infinity,
        child:  ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index){
            return VideoContainer();
          },
        ) ,
      ),
      sliderImages2(),
      Padding(
        padding: const EdgeInsets.only(left: 16,top:19,bottom: 20),
        child: Text("New and Noteworthy",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
      ),
      SizedBox(
         width: 170,
         height: 300,
         child: ScrollConfiguration(
             behavior: AppScrollBehavior(),
             child: GridView(
                 scrollDirection: Axis.horizontal,
                 physics: const PageScrollPhysics(),
                 gridDelegate:
                 const SliverGridDelegateWithFixedCrossAxisCount(
                     mainAxisSpacing: 0.0,
                     crossAxisSpacing: 0.0,
                     mainAxisExtent: 135.0,
                     crossAxisCount: 2,
                     childAspectRatio: 0.70),
                 children: listItem
                     .map((title) => ItemWidget(
                   image: ImageResource.instance.native,
                   title: "Native Water\nPurifier",
                 ))
                     .toList()))),
      Padding(
        padding: const EdgeInsets.only(left: 16,top: 31,bottom: 9,),
        child: Text("Most booking services",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
      ),
      SizedBox(
          width: 170,
          height:160,
          child: ScrollConfiguration(
              behavior: AppScrollBehavior(),
              child: GridView(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0.0,
                      crossAxisSpacing: 0.0,
                      mainAxisExtent: 135.0,
                      crossAxisCount: 1,
                      childAspectRatio: 0.70),
                  children: listItem2
                      .map((title) => ItemWidget2(
                    image: ImageResource.instance.beards,
                    title: "Haircut for men",
                    likes: " 4.88 (639.8K)",
                    price: "499",
                  ))
                      .toList()))),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 18,bottom: 20),
        child: Row(
          children: [
            Text("Salon for women",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
            Spacer(),
            Text("See all",style: StyleResource.instance.styleBold(DimensionResource.fontSizeDefault, ColorResource.seeAllColor),),
          ],
        ),
      ),
      SizedBox(
          width: 170,
          height: 300,
          child: ScrollConfiguration(
              behavior: AppScrollBehavior(),
              child: GridView(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0.0,
                      crossAxisSpacing: 0.0,
                      mainAxisExtent: 135.0,
                      crossAxisCount: 2,
                      childAspectRatio: 0.70),
                  children: listItem3
                      .map((title) => ItemWidget3(
                    image: ImageResource.instance.pedicure,
                    title: "Pedicure",
                  ))
                      .toList()))),
      SizedBox(height: MediaQuery.of(context).size.height *0.04),
      exploreButton1(context, ImageResource.instance.hairReduction,"Laser Hair\nReduction","Goodbye razor.\nHello laser", "Explore"),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,bottom:20,top: 36),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Spa for women",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                Text("Refresh. Rewind. Rejuvenate.",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeExtraSmall, ColorResource.black),),
              ],
            ),
            Spacer(),
            Text("See all",style: StyleResource.instance.styleBold(DimensionResource.fontSizeDefault, ColorResource.seeAllColor),),
          ],
        ),
      ),
      SizedBox(
          width: 170,
          height:160,
          child: ScrollConfiguration(
              behavior: AppScrollBehavior(),
              child: GridView(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0.0,
                      crossAxisSpacing: 0.0,
                      mainAxisExtent: 135.0,
                      crossAxisCount: 1,
                      childAspectRatio: 0.70),
                  children: listItem4
                      .map((title) => ItemWidget4(
                    image: ImageResource.instance.stresstherapy,
                    title: "Stress relief\ntherapy",
                  ))
                      .toList()))),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 20,bottom: 20),
        child: Row(
          children: [
            Text("AC & appliance repair",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
            Spacer(),
            Text("See all",style: StyleResource.instance.styleBold(DimensionResource.fontSizeDefault, ColorResource.seeAllColor),),
          ],
        ),
      ),
      SizedBox(
          width: 170,
          height:160,
          child: ScrollConfiguration(
              behavior: AppScrollBehavior(),
              child: GridView(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0.0,
                      crossAxisSpacing: 0.0,
                      mainAxisExtent: 135.0,
                      crossAxisCount: 1,
                      childAspectRatio: 0.70),
                  children: listItem5
                      .map((title) => ItemWidget5(
                    image: ImageResource.instance.acrepair,
                    title: "AC Service and\nRepair",
                  ))
                      .toList()))),
      SizedBox(height: MediaQuery.of(context).size.height *0.04),
      exploreButton2(context, ImageResource.instance.waterglass, "Explore"),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 36,bottom: 20),
        child: Row(
          children: [
            Text("Cleaning & pest control",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
            Spacer(),
            Text("See all",style: StyleResource.instance.styleBold(DimensionResource.fontSizeDefault, ColorResource.seeAllColor),),
          ],
        ),
      ),
      SizedBox(
          width: 170,
          height:160,
          child: ScrollConfiguration(
              behavior: AppScrollBehavior(),
              child: GridView(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0.0,
                      crossAxisSpacing: 0.0,
                      mainAxisExtent: 135.0,
                      crossAxisCount: 1,
                      childAspectRatio: 0.70),
                  children: listItem6
                      .map((title) => ItemWidget6(
                    image: ImageResource.instance.brush,
                  ))
                      .toList()))),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 23,bottom: 20),
        child: Row(
          children: [
            Text("Quick home repair",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
            Spacer(),
            Text("See all",style: StyleResource.instance.styleBold(DimensionResource.fontSizeDefault, ColorResource.seeAllColor),),
          ],
        ),
      ),
      SizedBox(
          width: 170,
          height:160,
          child: ScrollConfiguration(
              behavior: AppScrollBehavior(),
              child: GridView(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0.0,
                      crossAxisSpacing: 0.0,
                      mainAxisExtent: 135.0,
                      crossAxisCount: 1,
                      childAspectRatio: 0.70),
                  children: listItem7
                      .map((title) => ItemWidget7(
                    image: ImageResource.instance.nall,
                    title: "Tap repair",
                    likes: " 4.88 (177.8K)",
                    price: "100",
                  ))
                      .toList()))),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 23,bottom: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Salon for Men",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                Text("Grooming essentials",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeExtraSmall, ColorResource.black),),
              ],
            ),
            Spacer(),
            Text("See all",style: StyleResource.instance.styleBold(DimensionResource.fontSizeDefault, ColorResource.seeAllColor),),
          ],
        ),
      ),
      SizedBox(
          width: 170,
          height:160,
          child: ScrollConfiguration(
              behavior: AppScrollBehavior(),
              child: GridView(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0.0,
                      crossAxisSpacing: 5.0,
                      mainAxisExtent: 135.0,
                      crossAxisCount: 2,
                      childAspectRatio: 0.70),
                  children: listItem8
                      .map((title) => ItemWidget8(
                    image: ImageResource.instance.facewash,
                  ))
                      .toList()))),
      SizedBox(height: MediaQuery.of(context).size.height *0.04),
      exploreButton2(context, ImageResource.instance.girlmassage, "Explore"),
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 23,bottom: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Massage for men",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                Text("Curated massages by top therapists",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeExtraSmall, ColorResource.black),),
              ],
            ),
            Spacer(),
            Text("See all",style: StyleResource.instance.styleBold(DimensionResource.fontSizeDefault, ColorResource.seeAllColor),),
          ],
        ),
      ),
      SizedBox(
          width: 170,
          height:160,
          child: ScrollConfiguration(
              behavior: AppScrollBehavior(),
              child: GridView(
                  scrollDirection: Axis.horizontal,
                  physics: const PageScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 0.0,
                      mainAxisExtent: 135.0,
                      crossAxisCount: 1,
                      childAspectRatio: 0.70),
                  children: listItem9
                      .map((title) => ItemWidget9(
                    image: ImageResource.instance.boymassage,
                  ))
                      .toList()))),
      referContainer(),
    ],
  );
}





class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key, required this.title,required this.image}) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: ColorResource.grey_2,width: 2)
            ),
            child: Image.asset(image,fit: BoxFit.fill,)),
        Text(title,textAlign: TextAlign.center),
      ],
    );
  }
}

class ItemWidget2 extends StatelessWidget {
  const ItemWidget2({Key? key,required this.title,required this.image,required this.likes,required this.price,}) : super(key: key);
  final String title;
  final String image;
  final String likes;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
              ),
              child: Image.asset(image,fit: BoxFit.fill,)),
          Text(title,style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),),
          Row(
            children: [
              Image.asset(ImageResource.instance.likesStar),
              Text(likes,style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),),
            ],
          ),
          Row(
            children: [
              Image.asset(ImageResource.instance.priceIcon),
              Text(price,style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),),
            ],
          )
        ],
      ),
    );
  }
}

class ItemWidget3 extends StatelessWidget {
  const ItemWidget3({Key? key,required this.title,required this.image}): super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            height: 144,
            width: 128,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: ColorResource.grey_2,width: 2)
            ),
            child: Image.asset(image),
          ),
          Positioned(
            top:12,
              left: 4,
              child: Text(title,style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),)),
        ],
      ),
    );
  }
}

class ItemWidget4 extends StatelessWidget {
  const ItemWidget4({Key? key,required this.title,required this.image}): super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            height: 144,
            width: 128,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset(image,fit: BoxFit.cover,),
          ),
          Positioned(
              top:25,
              left:15,
              child: Text(title,style: StyleResource.instance.styleBold(DimensionResource.fontSizeSmallTo, ColorResource.white),)),
        ],
      ),
    );
  }
}

class ItemWidget5 extends StatelessWidget {
  const ItemWidget5({Key? key,required this.title,required this.image}): super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            height: 144,
            width: 128,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset(image,fit: BoxFit.cover,),
          ),
          Positioned(
              top:25,
              left:15,
              child: Text(title,style: StyleResource.instance.styleBold(DimensionResource.fontSizeSmallTo, ColorResource.white),)),
        ],
      ),
    );
  }
}

class ItemWidget6 extends StatelessWidget {
  const ItemWidget6({Key? key,required this.image}): super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        height: 144,
        width: 128,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: ColorResource.catBorderColor)
          // gradient: const LinearGradient(
          //   colors: [ColorResource.grey, Colors.white],
          //   begin: Alignment.centerRight,
          //   end: Alignment.topRight,
          //   stops: [0.1, 0.9],
          //   tileMode: TileMode.repeated,
          // ),
        ),
      ),
        Positioned(
          bottom: 18,
          right:10,
          child: Image.asset(image,fit: BoxFit.fill,),
        ),
    ]
    );
  }
}

class ItemWidget7 extends StatelessWidget {
  const ItemWidget7({Key? key,required this.title,required this.image,required this.likes,required this.price,}) : super(key: key);
  final String title;
  final String image;
  final String likes;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.asset(image,fit: BoxFit.fill,)),
          Text(title,style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),),
          Row(
            children: [
              Image.asset(ImageResource.instance.likesStar),
              Text(likes,style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),),
            ],
          ),
          Row(
            children: [
              Image.asset(ImageResource.instance.priceIcon),
              Text(price,style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),),
            ],
          )
        ],
      ),
    );
  }
}

class ItemWidget8 extends StatelessWidget {
  const ItemWidget8({Key? key,required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Stack(
        children: [
          Container(
            height: 144,
            width: 128,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: ColorResource.grey_3),
            ),
          ),
          Positioned(
            bottom:1,right: 1,top: 10,
              child: Image.asset(image,)),

        ],
      ),
    );
  }
}

class ItemWidget9 extends StatelessWidget {
  const ItemWidget9({Key? key,required this.image}): super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144,
      width: 128,
      child: Image.asset(image,fit: BoxFit.fill,),
    );
  }
}








// if this gridview used on flutter web need below class for scrolling
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}
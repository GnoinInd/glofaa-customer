import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:glofa_customer/model/utils/resource/color_resource.dart';
import 'package:glofa_customer/model/utils/resource/dimensions_resource.dart';
import 'package:glofa_customer/model/utils/resource/image_resource.dart';
import 'package:glofa_customer/model/utils/resource/style_resource.dart';
import 'package:glofa_customer/view_model/controllers/root_view_controller/home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


/// Home Screen All Widgets Here

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )),
    );
  }
}
int activeIndex = 0;
final images = [
  'assets/to_view_images/acman.png',
  'assets/to_view_images/acman.png',
  'assets/to_view_images/acman.png',
  'assets/to_view_images/acman.png',
  'assets/to_view_images/acman.png',
];
final images2 = [
  'assets/to_view_images/messageman.png',
  'assets/to_view_images/messageman.png',
  'assets/to_view_images/messageman.png',
  'assets/to_view_images/messageman.png',
  'assets/to_view_images/messageman.png',
];
List<Map>allFields = [
  {
    "name":"Parlour",
    "image": ImageResource.instance.parlour,
  },
  {
    "name":"Men’s salon",
    "image": ImageResource.instance.salon,
  },
  {
    "name":"Women’s Therapies",
    "image": ImageResource.instance.therapy,
  },
  {
    "name":"Men’s Therapies",
    "image": ImageResource.instance.yoga,
  },
  {
    "name":"Services for driving",
    "image": ImageResource.instance.services,
  },
  {
    "name":"Salon",
    "image": ImageResource.instance.salon,
  },
  {
    "name":"Parlour",
    "image": ImageResource.instance.parlour,
  },
];
List<Map>allFields2 = [
  {
    "name":"Native Water\nPurifier",
    "image": ImageResource.instance.parlour,
  },
  {
    "name":"Bathroom\n& kitchen",
    "image": ImageResource.instance.salon,
  },
  {
    "name":"House\npainter",
    "image": ImageResource.instance.therapy,
  },
  {
    "name":"Spa ayurveda",
    "image": ImageResource.instance.yoga,
  },
  {
    "name":"Nail studio for\nwomen",
    "image": ImageResource.instance.services,
  },
  {
    "name":"Hair studio for\nwomen",
    "image": ImageResource.instance.salon,
  },
];
Widget _listOfAllFields(List<Map> allFields, int index){
  return SizedBox(
    height: 46,
    width:74,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(allFields[index]["image"],height: 28,width: 30,),
        const SizedBox(height:4,),
        Text(allFields[index]["name"],style: StyleResource.instance.styleRegular(DimensionResource.fontSizeExtraSmalled, ColorResource.black),),
      ],
    ),
  );
}
Widget buildImage(String assetImage, int index)=>
    Container(
      child: Image.asset(assetImage, fit: BoxFit.cover,),
    );
Widget buildIndicator() => AnimatedSmoothIndicator(
  effect: const ExpandingDotsEffect(dotWidth:2,
      dotHeight:5,
      activeDotColor: ColorResource.glofabluecolor,
      dotColor: Colors.white,
      paintStyle: PaintingStyle.fill

  ),

  activeIndex: activeIndex,
  count: images.length,

);
Widget buildIndicator2() => AnimatedSmoothIndicator(
  effect: const ExpandingDotsEffect(dotWidth:2,
      dotHeight:5,
      activeDotColor: ColorResource.glofabluecolor,
      dotColor: Colors.white,
      paintStyle: PaintingStyle.fill

  ),

  activeIndex: activeIndex,
  count: images2.length,

);
Widget dividerStyle(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 4,
        width: 50,
        decoration:  const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffF45540), Colors.white],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft
            )
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          children: [
            Text("Buy Product",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),)
          ],
        ),
      ),
      Container(
        height: 4,
        width: 50,
        decoration:  const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffF45540), Colors.white],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight
            )
        ),
      ),
    ],
  );
}
Widget sliderImages(){
  return Stack(
    children: [
      CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context,index,realIndex){
            final assetImage = images[index];
            return buildImage(assetImage,index);
          },
          options: CarouselOptions(
              autoPlay: true,

              height: 155,
              onPageChanged: (index, reason) =>
                  setState(()=> activeIndex = index)

          )),
      const SizedBox(height: 12,),
      Positioned(
          bottom: 10,
          left: 150,
          right: 150,
          child: buildIndicator()),
    ],
  );
}

setState(int Function() param0) {
}
Widget sliderImages2(){
  return Column(
    children: [
      CarouselSlider.builder(
          itemCount: images2.length,
          itemBuilder: (context,index,realIndex){
            final assetImage = images2[index];
            return buildImage(assetImage,index);
          },
          options: CarouselOptions(
              autoPlay: true,
              height: 155,
              onPageChanged: (index, reason) =>
                  setState(()=> activeIndex = index)

          )),
      const SizedBox(height: 8,),      buildIndicator2(),
    ],
  );
}
Widget VideoContainer(){
  return Container(
    margin: const EdgeInsets.only(left: 16,right: 16),
    height: 165,
    width: 124,
    decoration: BoxDecoration(
        color: ColorResource.lightBorderColor,
        borderRadius: BorderRadius.circular(5)
    ),
    child: Center(
      child: Image.asset(ImageResource.instance.circleVideoPlay),
    ),
  );
}
Widget plusContainer(BuildContext context){
  return Container(
    color: ColorResource.boxShadow,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(ImageResource.instance.glofaStarIcon,),
          SizedBox(width: MediaQuery.of(context).size.width *0.02,),
          Text("Plus",style: StyleResource.instance.styleBold(DimensionResource.fontSizeOverLarge, ColorResource.black),),
          const Spacer(),
          const Text("Exclusive time Slots & up to15...."),
          const Spacer(),
          const Icon(Icons.keyboard_arrow_right),
        ],
      ),
    ),
  );
}
Widget searchContainer(BuildContext context){
  return Container(
      height: 38,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: ColorResource.searchbarBorder),
        boxShadow: const [
          BoxShadow(
            color: ColorResource.searchbarBorder,
            blurRadius: 02.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 2.0),
          )
        ],
      ),
      child:Center(
        child: AppBar(
          title:  Text('Search Glofaa.com',style: StyleResource.instance.styleRegular(DimensionResource.fontSizeExtraSmall, ColorResource.grey),),
          leading: IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SearchPage())),
              icon: const Icon(Icons.search,color: ColorResource.grey,)),
          actions: [
            // Navigate to the Search Screen
            IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const SearchPage())),
                icon: const Icon(Icons.mic,color: ColorResource.grey,)),
            IconButton(onPressed:(){}, icon : Image.asset(ImageResource.instance.cameraicon)),
          ],
        ),
      )
  );
}
Widget fieldsContainer(){
  return Container(
    height: 74,
    width: double.infinity,
    color: ColorResource.glofalightblue,
    child:Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: allFields.length,
          itemBuilder: (BuildContext context, int index){
            return _listOfAllFields(allFields,index);
          },
        )
    ),
  );
}
Widget CommonContainer(BuildContext context ,image, String text){
  return Column(
    children: [
      Image.asset(image),
      Text(text,style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),),
    ],
  );
}
Widget commonContainer1(BuildContext context,){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 8),
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
        padding: const EdgeInsets.only(left: 16,right: 16,top:4,bottom: 8),
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
    ],
  );
}
Widget courselImages(BuildContext context,  HomeController controller){
  return  SizedBox(
    height:125,
    width: double.infinity,
    child: PageView(
      controller: controller.pageController,
      scrollDirection: Axis.horizontal,
      onPageChanged: (value) {
        controller.selectedIndex.value = value;
      },
      children: [
        Image.asset("assets/to_view_images/acman.png",fit: BoxFit.fill,),
        Image.asset("assets/to_view_images/acman.png",fit: BoxFit.fill,),
        Image.asset("assets/to_view_images/acman.png",fit: BoxFit.fill,),
        Image.asset("assets/to_view_images/acman.png",fit: BoxFit.fill,),
        Image.asset("assets/to_view_images/acman.png",fit: BoxFit.fill,),

      ],
    ),
  );
}
Widget exploreButton1(BuildContext context, String image,String leading,String title,String buttonText){
  return Stack(
    children: [
      Container(
        child: Image.asset(image),
      ),
      Positioned(
        left: 140,
        top: 14,
        child: Text(
          leading,style: StyleResource.instance.styleBold(DimensionResource.fontSizeSmallTo, ColorResource.black),),
      ),
      Positioned(
        top: 120,
          left:48,
          child: Text(title,style: StyleResource.instance.styleBold(DimensionResource.fontSizeSmallTo, ColorResource.white),)),
      Positioned(
        left: 122,
          bottom: 28,
          child: Container(
            height: 23,
              width: 101,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: ColorResource.white,
                  ),
                  BoxShadow(
                    color: ColorResource.grey_3,
                    spreadRadius: -2.0,
                    blurRadius: 20.0,
                  ),
                ]
              ),
              child: Center(child: Text(buttonText,style: StyleResource.instance.styleBold(DimensionResource.fontSizeSmallTo, ColorResource.black),))))
    ],
  );
}
Widget exploreButton2(BuildContext context, String image,String buttonText){
  return Stack(
    children: [
      Container(
        child: Image.asset(image),
      ),
      Positioned(
        left: 122,
          bottom: 28,
          child: Container(
            height: 23,
              width: 101,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: ColorResource.white,
                  ),
                  BoxShadow(
                    color: ColorResource.grey_3,
                    spreadRadius: -2.0,
                    blurRadius: 20.0,
                  ),
                ]
              ),
              child: Center(child: Text(buttonText,style: StyleResource.instance.styleBold(DimensionResource.fontSizeSmallTo, ColorResource.black),))))
    ],
  );
}
Widget exploreButton3(BuildContext context, String image,String buttonText){
  return Stack(
    children: [
      Container(
        child: Image.asset(image),
      ),
      Positioned(
        left: 122,
          bottom: 28,
          child: Container(
            height: 23,
              width: 101,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: ColorResource.white,
                  ),
                  BoxShadow(
                    color: ColorResource.grey_3,
                    spreadRadius: -2.0,
                    blurRadius: 20.0,
                  ),
                ]
              ),
              child: Center(child: Text(buttonText,style: StyleResource.instance.styleBold(DimensionResource.fontSizeSmallTo, ColorResource.black),))))
    ],
  );
}
Widget referContainer(){
  return SizedBox(
    height: 90,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Refer and get\nfree services",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
              Text("Invite and get1 ₹100*",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),)
            ],
          ),
          Spacer(),
          Stack(
            children: [
              SizedBox(
                height: 79.55,
                width: 114,
                child: Center(
                  child: Image.asset(ImageResource.instance.gifts),
                ),
              ),
              Positioned(
                top: 10,
                  left: 10,
                  child: Image.asset(ImageResource.instance.staricon,height: 15,width: 15,)),
              Positioned(
                left: 40,
                  top: 5,
                  child: Image.asset(ImageResource.instance.staricon,height: 7,width: 7,)),
              Positioned(
                right:5,
                  top: 15,
                  child: Image.asset(ImageResource.instance.staricon,height: 15,width: 15,)),
              Positioned(
                bottom: 5,
                  right:15,
                  child: Image.asset(ImageResource.instance.staricon,height: 7,width: 7,)),
            ],
          )
        ],
      ),
    ),
  );
}
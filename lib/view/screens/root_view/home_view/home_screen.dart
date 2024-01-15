import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:glofa_customer/model/utils/resource/image_resource.dart';
import 'package:glofa_customer/view/screens/base_view/base_view_screen.dart';
import '../../../../model/utils/resource/color_resource.dart';
import '../../../../model/utils/resource/dimensions_resource.dart';
import '../../../../model/utils/resource/style_resource.dart';
import '../../../../view_model/controllers/root_view_controller/home_controller.dart';


class HomeScreen extends StatelessWidget {


  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String title;

    return BaseView(viewControl: HomeController(),
        onPageBuilder: (BuildContext context, HomeController controller) => _buildHomeView(context,controller));
  }
}

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

int activeIndex = 0;




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




Widget _buildHomeView(BuildContext context, HomeController controller){
  return  ListView(
    children: [
      Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 36),
          color: ColorResource.boxShadow,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(ImageResource.instance.glofaStarIcon,),
                Text("Plus",style: StyleResource.instance.styleBold(DimensionResource.fontSizeOverLarge, ColorResource.black),),
                const Spacer(),
                const Text("Exclusive time Slots & up to15...."),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_right),
              ],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height *0.04,),
        Padding(
          padding: const EdgeInsets.only(left: 16,right:42),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
                      IconButton(onPressed:(){}, icon : const Icon(Icons.camera,color: ColorResource.grey,)),
                    ],
                ),
                  )
              ),
              Text("Action Area IIC",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
              Row(
                children: [
                  Text("North Block - Newtown - Kolkata - Ne...",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),),
                  const Icon(Icons.keyboard_arrow_down),
                ],
              ),

            ],
          ),
        ),
        Container(
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
        ),
        sliderImages(),
        Padding(
          padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 8),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(ImageResource.instance.womensSpa),
                  Text("Women's\nSalon, Spa &\nLaser Clinic",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),)
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Image.asset(ImageResource.instance.mensSalon),
                  Text("Men's Salon &\nMassage",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),)
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Image.asset(ImageResource.instance.acApplience),
                  Text("AC &\nAppliance\nRepair",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),)
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16,right: 16,top:4,bottom: 8),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(ImageResource.instance.cleaningPestcontrol),
                  Text("Women's\nSalon, Spa &\nLaser Clinic",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),)
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Image.asset(ImageResource.instance.electricianPlumber),
                  Text("Men's Salon &\nMassage",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),)
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Image.asset(ImageResource.instance.housePainter),
                  Text("AC &\nAppliance\nRepair",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),)
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height *0.01,),
        dividerStyle(),
        SizedBox(height: MediaQuery.of(context).size.height *0.01,),
        Container(
          height: 73,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 16,right: 16),
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
        SizedBox(height: MediaQuery.of(context).size.height *0.02,),
        Padding(
          padding: const EdgeInsets.only(left: 16,right:42),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Thoughtful curations",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
              Row(
                children: [
                  Text("of our finest experiences",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),),
                ],
              ),

            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height *0.04,),
        // Expanded(
        //   child: Column(
        //     children: [
        //       ListView(
        //         scrollDirection: Axis.horizontal,
        //         children: <Widget>[
        //           VideoContainer(),
        //         ],
        //       ),
        //     ],
        //   ),
        // )
        sliderImages2(),
        Padding(
          padding: const EdgeInsets.only(left: 16,right:42),
          child: Row(
            children: [
              Text("New and Noteworthy",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height *0.04,),
        Container(
          height: 96,
          width: double.infinity,
          color: ColorResource.glofalightblue,
          child:Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: allFields2.length,
                itemBuilder: (BuildContext context, int index){
                  return _listOfAllFields2(allFields2,index);
                },
              )
          ),
        ),

      ],
    ),
  ],
  );
}

setState(int Function() param0) {
}

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

Widget _listOfAllFields2(List<Map> allFields, int index){
  return Column(
    children: [
      SizedBox(
        height: 96,
        width: 91,
        child:Image.asset(allFields2[index]["image"],fit: BoxFit.fill,),
      ),
      const SizedBox(height:4,),
      Text(allFields2[index]["name"],style: StyleResource.instance.styleRegular(DimensionResource.fontSizeExtraSmall, ColorResource.black),),
    ],
  );
}


Widget buildImage(String assetImage, int index)=>
    Container(
      margin: const EdgeInsets.symmetric(horizontal:0),
      child: Image.asset(assetImage, fit: BoxFit.fill,),
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
    children: [
      Expanded(
        child:  SizedBox(
          height:4,
          child: Container(
            decoration:  const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffF45540), Colors.white],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft
                )
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Row(
          children: [
           Text("Buy Product",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),)
          ],
        ),
      ),
      Expanded(
        child:  SizedBox(
          height: 4,
          child: Container(
            decoration:  const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffF45540), Colors.white],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                )
            ),
          ),
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

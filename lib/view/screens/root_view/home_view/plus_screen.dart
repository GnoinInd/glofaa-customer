import 'package:flutter/material.dart';
import 'package:glofa_customer/model/utils/resource/color_resource.dart';
import 'package:glofa_customer/model/utils/resource/dimensions_resource.dart';
import 'package:glofa_customer/model/utils/resource/image_resource.dart';
import 'package:glofa_customer/model/utils/resource/style_resource.dart';
import 'package:glofa_customer/view/screens/base_view/base_view_screen.dart';
import 'package:glofa_customer/view_model/controllers/root_view_controller/plus_controller.dart';


class PlusScreen extends StatelessWidget {
  const PlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewControl: PlusController(),
        onPageBuilder: (BuildContext context, PlusController controller) => _buildPlusView(context,controller));
  }
}


Widget _buildPlusView (BuildContext context , PlusController controller){
  return ListView(
    padding:const EdgeInsets.symmetric(horizontal:18,vertical:42,),
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.arrow_back),
          Center(
            child: Image.asset(ImageResource.instance.glofaStarIcon,height: 155,fit: BoxFit.fill,),
          )
        ],
      ),
      Row(
        children: [
          Image.asset(ImageResource.instance.glofaStarIcon),
          SizedBox(width: MediaQuery.of(context).size.width *0.02,),
          Text("Plus",style: StyleResource.instance.styleBold(DimensionResource.fontSizeOverLarge, ColorResource.black),)
        ],
      ),
      Text("One membership for all benifts",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
      SizedBox(height: MediaQuery.of(context).size.height *0.02,),
      Row(
        children: [
          Image.asset(ImageResource.instance.percentRound),
          SizedBox(width: MediaQuery.of(context).size.width *0.01,),
          Text("15% off on never tried categories",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),)
        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.02,),

      Row(
        children: [
          Image.asset(ImageResource.instance.clockRound),
          SizedBox(width: MediaQuery.of(context).size.width *0.01,),
          Text("Express Service in 60-90 min",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),)
        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.02,),

      Row(
        children: [
          Image.asset(ImageResource.instance.calendarRound),
          SizedBox(width: MediaQuery.of(context).size.width *0.01,),
          Text("Reserved weekend time slots",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),)
        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.02,),

      Row(
        children: [
          Image.asset(ImageResource.instance.giftRound),
          SizedBox(width: MediaQuery.of(context).size.width *0.01,),
          Text("Free Service every month",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),)
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16,left: 16,bottom: 28),
        child: Text("View services",style: StyleResource.instance.styleBold(DimensionResource.fontSizeExtraSmall, ColorResource.seeAllColor),),
      ),
      Text("Select your plan",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
      SizedBox(height: MediaQuery.of(context).size.height *0.02,),
      Row(
        children: [
          Container(
            height: 83,
            width: 154,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: ColorResource.seeAllColor)
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("6 months",style: StyleResource.instance.styleBold(DimensionResource.fontSizeDoubleExtraLarge, ColorResource.black),),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.currency_rupee,size: 12,),
                      Text("199",style: StyleResource.instance.style(DimensionResource.fontSizeExtraLarge, ColorResource.black),),
                      Icon(Icons.currency_rupee,size: 12,),
                      Text("699",style: StyleResource.instance.style(DimensionResource.fontSizeExtraLarge, ColorResource.black),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 83,
            width: 154,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: ColorResource.seeAllColor)
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("12 months",style: StyleResource.instance.styleBold(DimensionResource.fontSizeDoubleExtraLarge, ColorResource.black),),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.currency_rupee,size: 12,),
                      Text("2499",style: StyleResource.instance.style(DimensionResource.fontSizeExtraLarge, ColorResource.black),),
                      Icon(Icons.currency_rupee,size: 12,),
                      Text("999",style: StyleResource.instance.style(DimensionResource.fontSizeExtraLarge, ColorResource.black),),
                    ],
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
      Container(
        margin: EdgeInsets.only(top: 16,bottom: 16),
        height: 105,
        width: 328,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.6,
              ],
              colors: [
                Color(0xffF6C9CC),
                Color(0xffF6C9CC00),
                Color(0xffF6C9CC1A),
              ],
            )
        ),
        child:Padding(
          padding: const EdgeInsets.only(left: 12,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Get free services with Plus",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
              Row(
                children: [
                  Text("worth up to",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                  Icon(Icons.currency_rupee,color: ColorResource.seeAllColor,size: 14,),
                  Text("10,000",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.seeAllColor),),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.01,),
              Container(
                height: 21,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text("View gifts",style: StyleResource.instance.styleBold(DimensionResource.fontSizeSmallTo, ColorResource.white),),
                ),
              )
            ],
           ),
        ),
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.02,),
     Row(
       children: [
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("100% money back gurantee",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
             Text("if you save less than the membership\nprice, we refund you the difference",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),)
           ],
         ),
         Spacer(),
         Image.asset(ImageResource.instance.medal),
       ],
     ),
      SizedBox(height: MediaQuery.of(context).size.height *0.03,),
      Text("Plus in numbers",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top:18,),
            height: 93,
            width: 161,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: ColorResource.seeAllColor)
            ),

            child: Padding(
              padding: const EdgeInsets.only(left: 5,top: 5,right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                     children: [
                       Icon(Icons.currency_rupee,size: 14,),
                       Text("64 crores",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                       SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                       Spacer(),
                       Image.asset(ImageResource.instance.arrowtick,height: 30,width: 30,),
                     ],
                   ),
                  Text("Saved by Plus\nmembers",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),)
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(top:18,),
            height: 93,
            width: 161,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: ColorResource.seeAllColor)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5,top: 5,right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.currency_rupee,size: 14,),
                      Text("9.5 lakh+",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                      SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                      Spacer(),
                      Image.asset(ImageResource.instance.contactplus,height: 30,width: 30,),
                    ],
                  ),
                  Text("Happy Plus\nmembers",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),)
                ],
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(top:18,),
            height: 93,
            width: 161,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: ColorResource.seeAllColor)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5,top: 5,right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.currency_rupee,size: 14,),
                      Text("4.84",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                      SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                      Spacer(),
                      Image.asset(ImageResource.instance.goldstarplus,height: 30,width: 30,),
                    ],
                  ),
                  Text("Average\nrating of Plus pr...",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),)
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(top:18,),
            height: 93,
            width: 161,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: ColorResource.seeAllColor)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5,top: 5,right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.currency_rupee,size: 14,),
                      Text("6.3",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                      SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                      Spacer(),
                      Image.asset(ImageResource.instance.mobilelist,height: 30,width: 30,),
                    ],
                  ),
                  Text("Average\nbooking per m...",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),)
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.04,),
      Text("FAQs",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
      SizedBox(height: MediaQuery.of(context).size.height *0.04,),
      Row(
        children: [
          Text("How many free services can i avail?", style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
          Spacer(),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
      Divider(),
      Row(
        children: [
          Text("What are the benefits of Plus\nmembership?", style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
          Spacer(),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
      Divider(),
      Row(
        children: [
          Text("How does 100% money back guarantee\nwork?", style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
          Spacer(),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
      Divider(),
      Row(
        children: [
          Text("Is there a limit to maximum discount per\ntransaction?", style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
          Spacer(),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
      Divider(),
      Row(
        children: [
          Text("Is there a limit to number of transactions\nunder the membership?", style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
          Spacer(),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
      Divider(),
      Row(
        children: [
          Text("Is there a limit to the total maximum\ndiscount I can avail?", style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
          Spacer(),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
      Divider(),
      Row(
        children: [
          Text("Who is a Glofaa Plus professional?", style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
          Spacer(),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
      Divider(),
      Row(
        children: [
          Text("Can I pay for membership through cash?", style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
          Spacer(),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
      Divider(),
      Row(
        children: [
          Text("Can I cancel the membership after\nbuying it or transfer it?", style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
          Spacer(),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
      Divider(),
      Row(
        children: [
          Text("Can I get Plus discount on extra services\ntaken after the professional reaches my\nplace?", style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
          Spacer(),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
      Divider(),
      SizedBox(height: MediaQuery.of(context).size.height *0.04,),
      Text("Hear from happy Plus members",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
      SizedBox(height: MediaQuery.of(context).size.height *0.02,),
      Row(
        children: [
          Column(
            children: [
              Image.asset(ImageResource.instance.vishalroy),
            ],
          ),
          SizedBox(width: MediaQuery.of(context).size.width *0.01,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Vishal roy",style: StyleResource.instance.styleBold(DimensionResource.fontSizeDefault, ColorResource.black),),
              Text("Member since Oct 2020",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Row(
                children: [
                  Image.asset(ImageResource.instance.glofaStarIcon,height: 11,width: 13,),
                  Icon(Icons.currency_rupee,size: 12,),
                  Text("1,559",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeExtraSmall, ColorResource.black),),
                ],
              ),
              Text("In Plus savings",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeExtraSmall, ColorResource.black),)
            ],
          )
        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.01,),
      Text("Fully satisfied..Saved 1200+ till now.. I will\nrecommend this Service app to my friends.",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
      Divider(height:22,),
      Row(
        children: [
          Column(
            children: [
              Image.asset(ImageResource.instance.vishalroy),
            ],
          ),
          SizedBox(width: MediaQuery.of(context).size.width *0.01,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Vishal roy",style: StyleResource.instance.styleBold(DimensionResource.fontSizeDefault, ColorResource.black),),
              Text("Member since Oct 2020",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Row(
                children: [
                  Image.asset(ImageResource.instance.glofaStarIcon,height: 11,width: 13,),
                  Icon(Icons.currency_rupee,size: 12,),
                  Text("1,559",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeExtraSmall, ColorResource.black),),
                ],
              ),
              Text("In Plus savings",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeExtraSmall, ColorResource.black),)
            ],
          )
        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.01,),
      Text("Fully satisfied..Saved 1200+ till now.. I will\nrecommend this Service app to my friends.",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),
      Divider(height:22,),
      SizedBox(height: MediaQuery.of(context).size.height *0.01,),
      Center(
        child:
        Container(
          height: 29,
          width: 150,
          decoration: BoxDecoration(
            color: ColorResource.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius:2,
                spreadRadius:4,
              )
            ]
          ),
          child: Center(
            child: Text("Load more reviews",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),),

          ),
        ),
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.02,),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Do you have a coupon?",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),),
          Text("Apply here",style: StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.02,),
      Row(
        children: [
          Icon(Icons.currency_rupee,size: 14,),
          Text("199",style: StyleResource.instance.style(DimensionResource.fontSizeExtraLarge, ColorResource.black),),
          Icon(Icons.currency_rupee,size: 14,),
          Text("699",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),),
          Spacer(),
          Container(
            height: 28,
            width: 105,
            decoration: BoxDecoration(
              color: ColorResource.glofabluecolor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Proceed",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.white),),
                Icon(Icons.arrow_right,color: ColorResource.white,),
              ],
            ),
          )
        ],
      )











    ],
  );
}

import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_image.dart';
import 'package:dealsabaad/utils/constent_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Price_List extends StatelessWidget {
  const Price_List({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          DAText.PriceList,
          style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w700),
        ),
        leading: const Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
         Container(color: DAColor.GrayTable,
           child: Padding(
             padding: const EdgeInsets.all(22),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(DAText.Date,style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600,fontSize: 17),),
                Text(DAText.Project,style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600,fontSize: 17),),
                Text(DAText.UN,style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600,fontSize: 17),),
                Text(DAText.Price,style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600,fontSize: 17),),
                Text(DAText.Edit,style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600,fontSize: 17),),
              ],
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(22),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('23/4/24'),
              const Text('GFS Kapra\nMarket'),
              const Text('T-9A'),
              const Text(' 2,415,000'),
              Image.asset(DAImages.Edit,width: 20,)
            ],
           ),
         ),
         const Padding(
           padding: EdgeInsets.only(left: 22,right: 22),
           child: Divider(),
         ),
         Padding(
           padding: const EdgeInsets.all(22),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('23/4/24'),
              const Text('GFS Kapra\nMarket'),
              const Text('T-9A'),
              const Text(' 2,415,000'),
              Image.asset(DAImages.Edit,width: 20,)
            ],
           ),
         ),
        ],
      ),
    );
  }
}

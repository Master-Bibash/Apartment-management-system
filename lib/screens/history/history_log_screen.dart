import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryLogScreen extends StatelessWidget {
  const HistoryLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        
      
        actions: [
        Icon(Icons.logout_outlined),
        SizedBox(width: 20.w,)
        ],

      ),
     body: SafeArea(
       child: Column(
        children: [
          Container(
            height: 560.h,
            width: 360.w,
            margin: EdgeInsets.only(top: 16.h),
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft:Radius.circular(16),topRight: Radius.circular(16) )

            ),
          )
     
        
        ],
        
       ),
    
     ),
    //  bottomNavigationBar:BottomNavigationBar(
    //   currentIndex: 1,
      
      
    //   items: [
    //   BottomNavigationBarItem(icon: Icon(Icons.add),
    
      
    //   ),
    //     BottomNavigationBarItem(icon: Icon(Icons.add)),
    //  ]) ,
    );
  }
}
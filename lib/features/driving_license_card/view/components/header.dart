import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildHeader() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(
            'INDONESIA',
            style: TextStyle(
                fontSize: 22.sp,
                height: 1.2,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Spacer(),
          Expanded(
            child: Text(
              'DRIVING LICENSE',
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
      Text(
        'SURAT IZIN MENGEMUDI',
        style: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
      Text(
        '3175095801131001',
        style: TextStyle(
          fontSize: 13.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ],
  );
}

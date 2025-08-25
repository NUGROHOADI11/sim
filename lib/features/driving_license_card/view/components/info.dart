import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildInfoRow(String label, String value, {double maxWidth = 150}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 2.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 8.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth.w),
          child: Text(
            value,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.2,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildBloodAndGenderRow(String blood, String gender) {
  return Padding(
    padding: EdgeInsets.only(bottom: 2.h),
    child: Row(
      children: [
        Expanded(
          child: buildInfoRow("Gol Darah/Blood Type", blood),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: buildInfoRow("Jenis Kelamin/Gender", gender),
        ),
      ],
    ),
  );
}

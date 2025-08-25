import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/core/assets/image_constant.dart';
import '../components/header.dart';
import '../components/info.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DrivingLicenseCardScreen extends StatelessWidget {
  const DrivingLicenseCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "PUTRA NEGARA";
    double cardHeight = 864.h;
    double cardWidth = 1372.w;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              child: IgnorePointer(
                child: Transform.rotate(
                  angle: -0.80,
                  child: Center(
                    child: Wrap(
                      spacing: 80,
                      runSpacing: 50,
                      children: List.generate(
                        90,
                        (index) => Text(
                          name,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.05),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: cardWidth,
                height: 55,
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: cardWidth,
              height: cardHeight,
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          ImageConstant.logoPolice,
                          height: 110.h,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 60.h),
                        Expanded(
                          child: Image.asset(
                            ImageConstant.photo,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Image.asset(
                          ImageConstant.sign,
                          height: 80.h,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildHeader(),
                          buildInfoRow("Nama/Name", name),
                          buildInfoRow("Tempat, Tgl Lahir/Place, Date of Birth",
                              "JAKARTA 17 AGUSTUS 1975"),
                          buildBloodAndGenderRow("O", "LAKI-LAKI"),
                          buildInfoRow("Alamat/Address",
                              "MT HARYONO ST, RT.4/RW.2, CIKOKO, PANCORAN, JAKARTA SELATAN"),
                          buildInfoRow("Pekerjaan/Occupation", "POLRI"),
                          buildInfoRow(
                              "Diterbitkan Oleh/Issued By", "METRO JAYA"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 60.h,
              right: 20,
              child: Column(
                children: [
                  Text(
                    'A',
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    ImageConstant.car,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    'Mobil Penumpang Pribadi',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Pessenger Car/Personal Goods',
                    style: TextStyle(
                      height: 1,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Column(
                children: [
                  QrImageView(
                    data: 'https://venturo.id/',
                    version: QrVersions.auto,
                    size: 80.0,
                  ),
                  Text(
                    '21-12-2028',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

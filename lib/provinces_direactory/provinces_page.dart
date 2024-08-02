import 'package:afganistan_app/constants_file/app_colors.dart';
import 'package:afganistan_app/constants_file/app_images.dart';
import 'package:afganistan_app/constants_file/description.dart';
import 'package:afganistan_app/contact_class.dart';
import 'package:afganistan_app/provinces_direactory/each_province_page.dart';
import 'package:afganistan_app/provinces_direactory/provinces-oop_class.dart';
import 'package:flutter/material.dart';

class ProvincePage extends StatefulWidget {
  const ProvincePage({super.key});

  @override
  State<ProvincePage> createState() => _ProvincePageState();
}

class _ProvincePageState extends State<ProvincePage> {
  List provincesList = [
    ProvincesClass(
      name: 'Badakhshan',
      color: fColor,
      pImage: badkhshanImage,
      desc: badkhshanDesc,
    ),
    ProvincesClass(
      name: 'Badghis',
      color: sColor,
      pImage: badghisImage,
      desc: badghisDesc,
    ),
    ProvincesClass(
      name: 'Baghlan',
      color: thColor,
      pImage: baghlanImage,
      desc: baghlanDesc,
    ),
    ProvincesClass(
      name: 'Balkh',
      color: foColor,
      pImage: balkhImage,
      desc: balkhDesc,
    ),
    ProvincesClass(
      name: 'Bamyan',
      color: fiColor,
      pImage: bamyanImage,
      desc: bamyanDesc,
    ),
    ProvincesClass(
      name: 'Daykundi',
      color: fColor,
      pImage: daykundiImage,
      desc: daykundyDesc,
    ),
    ProvincesClass(
      name: 'Farah',
      color: sColor,
      pImage: farahImage,
      desc: farahDesc,
    ),
    ProvincesClass(
      name: 'Faryab',
      color: thColor,
      pImage: faryabImage,
      desc: faryabDesc,
    ),
    ProvincesClass(
      name: 'Ghazni',
      color: foColor,
      pImage: ghazniImage,
      desc: ghazniDesc,
    ),
    ProvincesClass(
      name: 'Ghor',
      color: fiColor,
      pImage: ghorImage,
      desc: ghorDesc,
    ),
    ProvincesClass(
      name: 'Helmand',
      color: fColor,
      pImage: helmandImage,
      desc: helmandDesc,
    ),
    ProvincesClass(
      name: 'Herat',
      color: sColor,
      pImage: heratImage,
      desc: heratDesc,
    ),
    ProvincesClass(
      name: 'Jowzjan',
      color: thColor,
      pImage: jowzjanImage,
      desc: jowzjanDesc,
    ),
    ProvincesClass(
      name: 'Kabul',
      color: foColor,
      pImage: kabulImage,
      desc: kabulDesc,
    ),
    ProvincesClass(
      name: 'Kandahar',
      color: fiColor,
      pImage: kandaharImage,
      desc: kandahrDesc,
    ),
    ProvincesClass(
      name: 'Kapisa',
      color: fColor,
      pImage: kapisaImage,
      desc: kapisaDesc,
    ),
    ProvincesClass(
      name: 'Khost',
      color: sColor,
      pImage: khostImage,
      desc: khostDesc,
    ),
    ProvincesClass(
      name: 'Kunar',
      color: thColor,
      pImage: kunarImage,
      desc: kunarDesc,
    ),
    ProvincesClass(
      name: 'Kunduz',
      color: foColor,
      pImage: kunduzImage,
      desc: kunduzDesc,
    ),
    ProvincesClass(
      name: 'Laghman',
      color: fiColor,
      pImage: laghmanImage,
      desc: laghmanDesc,
    ),
    ProvincesClass(
      name: 'Logar',
      color: fColor,
      pImage: logarImage,
      desc: logarDesc,
    ),
    ProvincesClass(
      name: 'Nangarhar',
      color: sColor,
      pImage: nangarharImage,
      desc: nangarharDesc,
    ),
    ProvincesClass(
      name: 'Nimruz',
      color: thColor,
      pImage: nimruzImage,
      desc: nimruzDesc,
    ),
    ProvincesClass(
      name: 'Nuristan',
      color: foColor,
      pImage: nuristanImage,
      desc: nuristanDesc,
    ),
    ProvincesClass(
      name: 'Paktia',
      color: fiColor,
      pImage: paktiaImage,
      desc: paktiaDesc,
    ),
    ProvincesClass(
      name: 'Paktika',
      color: fColor,
      pImage: paktikaImage,
      desc: paktikaDesc,
    ),
    ProvincesClass(
      name: 'Panjshir',
      color: sColor,
      pImage: panjshirImage,
      desc: panjshirDesc,
    ),
    ProvincesClass(
      name: 'Parwan',
      color: thColor,
      pImage: parwanImage,
      desc: parwanDesc,
    ),
    ProvincesClass(
      name: 'Samangan',
      color: foColor,
      pImage: samnganImage,
      desc: samnganDesc,
    ),
    ProvincesClass(
      name: 'Sar-e Pol',
      color: fiColor,
      pImage: sarepolImage,
      desc: sareoplDesc,
    ),
    ProvincesClass(
      name: 'Takhar',
      color: fColor,
      pImage: takharImage,
      desc: takharDesc,
    ),
    ProvincesClass(
      name: 'Uruzgan',
      color: sColor,
      pImage: uruzganImage,
      desc: uruzganDesc,
    ),
    ProvincesClass(
      name: 'Wardak',
      color: thColor,
      pImage: wardakImage,
      desc: wardakDesc,
    ),
    ProvincesClass(
      name: 'Zabul',
      color: foColor,
      pImage: zabulImage,
      desc: zabulDesc,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: bgColor,
        title: TextWidigt(txt: 'Provinces page'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: provincesList
            .map(
              (value) => GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EachProvincePage(
                          pImage: value.pImage,
                          name: value.name,
                          desc: value.desc,
                        ),
                      ),
                    );
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: value.color,
                  alignment: Alignment.center,
                  child: TextWidigt(txt: value.name,),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

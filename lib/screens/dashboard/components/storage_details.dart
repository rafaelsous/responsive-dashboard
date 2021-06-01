import 'package:flutter/material.dart';

import '../components/chart.dart';
import '../components/storage_info_card.dart';

import 'package:admin/constants.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSource: "assets/icons/Documents.svg",
            title: "Documents Files",
            numOfFiles: 1876,
            amountOfFiles: "1.45Gb",
          ),
          StorageInfoCard(
            svgSource: "assets/icons/media.svg",
            title: "Media Files",
            numOfFiles: 297,
            amountOfFiles: "6.91Gb",
          ),
          StorageInfoCard(
            svgSource: "assets/icons/folder.svg",
            title: "Others Files",
            numOfFiles: 7239,
            amountOfFiles: "0.85Gb",
          ),
          StorageInfoCard(
            svgSource: "assets/icons/unknown.svg",
            title: "Unknown",
            numOfFiles: 213,
            amountOfFiles: "0.17Gb",
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/chart.dart';
import 'components/storage_info_card.dart';

import 'package:admin/constants.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 500.0,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: Container(
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

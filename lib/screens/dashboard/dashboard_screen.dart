import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/chart.dart';

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
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 500.0,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 500.0,
                    padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
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

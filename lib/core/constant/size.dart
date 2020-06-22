import 'package:flutter/material.dart';

double dynamicHeight(BuildContext context, double value) =>
    MediaQuery.of(context).size.height * value;

double dynamicWidth(BuildContext context, double value) =>
    MediaQuery.of(context).size.width * value;
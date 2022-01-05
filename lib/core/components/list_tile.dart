import 'package:bookinghotel/core/constants/colors.dart';
import 'package:flutter/material.dart';

ListTile listtileforfilter(String title, {String? trailing}) {
  return ListTile(
    title: Text(
      title,
      style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: MainColor.kBlacText),
    ),
    trailing: Wrap(
      spacing: 12,
      children: [
        Text(trailing ?? "Select",
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: MainColor.kGreyDark)),
        const Icon(Icons.arrow_forward_ios)
      ],
    ),
  );
}

SwitchListTile switchlisttile(String title, bool value) {
  return SwitchListTile(
    value: value,
    onChanged: (e) {
      value = e;
    },
    title: Text(
      title,
      style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: MainColor.kBlacText),
    ),
  );
}

Padding listtileforDeals(String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 5),
    child: ListTile(
      title: Text(title,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black)),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.black,
      ),
    ),
  );
}

// To parse this JSON data, do
//
//     final hotelsAvailable = hotelsAvailableFromJson(jsonString);

import 'dart:convert';

HotelsAvailable hotelsAvailableFromJson(String str) => HotelsAvailable.fromJson(json.decode(str));

String hotelsAvailableToJson(HotelsAvailable data) => json.encode(data.toJson());

class HotelsAvailable {
    HotelsAvailable({
        this.price,
        this.imageMountain,
        this.nameMountain,
        this.imageHotel,
        this.nameHotel,
        this.localtionHotel,
        this.nightDrop,
    });

    int? price;
    String? imageMountain;
    String? nameMountain;
    String? imageHotel;
    String? nameHotel;
    String? localtionHotel;
    String? nightDrop;

    factory HotelsAvailable.fromJson(Map<String, dynamic> json) => HotelsAvailable(
        price: json["price"],
        imageMountain: json["imageMountain"],
        nameMountain: json["nameMountain"],
        imageHotel: json["imageHotel"],
        nameHotel: json["nameHotel"],
        localtionHotel: json["localtionHotel"],
        nightDrop: json["nightDrop"],
    );

    Map<String, dynamic> toJson() => {
        "price": price,
        "imageMountain": imageMountain,
        "nameMountain": nameMountain,
        "imageHotel": imageHotel,
        "nameHotel": nameHotel,
        "localtionHotel": localtionHotel,
        "nightDrop": nightDrop,
    };
}

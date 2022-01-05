import 'package:bookinghotel/core/constants/const_network.dart';
import 'package:bookinghotel/models/hotel_model.dart';
import 'package:dio/dio.dart';


class HotelService {
  Future<List<HotelsAvailable>> getHotel() async{
    Response res = await Dio().get(idAdress);
   print(res.data.toString());
    return (res.data as List).map((e) => HotelsAvailable.fromJson(e)).toList();
  }
}
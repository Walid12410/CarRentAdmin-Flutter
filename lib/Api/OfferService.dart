import 'dart:convert';
import 'package:carrent/Widget/ToastError.dart';
import 'package:carrent/model/Offer/OfferModel.dart';
import 'package:http/http.dart' as http;
import '../core/ApiEndPoint.dart';


class OfferService{

  Future<List<Offer>> fetchTopOffer(String time) async {
    try {
      final response = await http.get(Uri.parse('${ApiEndpoints.apiUrl}/api/offer?currentTime=$time&top=3'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        List<Offer> topOffer = jsonData.map((json) => Offer.fromJson(json)).toList();
        return topOffer;
      } else {
        showToast('Falid to load top offer');
        throw Exception('Failed to load top Offer');
      }
    } catch (e) {
      showToast('Server Error');
      throw Exception('Server Error');
    }
  }

}
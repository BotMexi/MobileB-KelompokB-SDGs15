import 'package:http/http.dart' as Client;
import 'package:spidylib/gajah.dart';

class APIService {
  final String url = "https://elephant-api.herokuapp.com"; //DIGANTI
  Client.Client client = Client.Client();
  Future<List<Gajah>> fetchGajah() async {
    final response = await client.get("$url/elephants"); //DIGANTI
    if (response.statusCode == 200) {
      // print(response.body);
      return gajahFromJson(response.body);
    } else {
      return null;
    }
  }
}

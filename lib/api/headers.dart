
class Headers {

  Future<Map<String, String>> getBasicHeader() async {
    Map<String, String> basicHeaders = {
      "Content-Type": "application/json",
    };
    return basicHeaders;
  }

}

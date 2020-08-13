
enum Endpoints {
  search
}

class API {
  final path = 'https://superheroapi.com/api/';
  final authToken = '3506693659343189';
  
  String getURL(Endpoints endpoint) {
    switch (endpoint) {
      case Endpoints.search:
        {
          return getURLComposed('/search');
        }
        break;
      default:
        {
          return '';
        }
        break;
    }
  }

  String getURLComposed(String endpoint) {
    return path + authToken + endpoint;
  }
}

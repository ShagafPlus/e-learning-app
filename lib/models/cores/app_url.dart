class AppUrl {
  static const String liveBaseURL = "https://elearning-backend.shghf.com";
  static const String localBaseURL = "http://127.0.0.1/api/v1";

  static const String baseURL = liveBaseURL;
  static const String login = baseURL + "/api/mobile/auth/login";
  static const String register = baseURL + "/api/mobile/auth/register";
//  static const String forgotPassword = baseURL + "/forgot-password";
}
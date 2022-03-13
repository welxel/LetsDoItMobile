class ApplicationConstants {
  static String FONT_FAMILY = "";
  static const LANG_ASSET_PATH = 'assets/lang';
  static const EMAIL_REGIEX = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}\$';
  set setFont(fontFamily) {
    FONT_FAMILY = fontFamily;
  }
}

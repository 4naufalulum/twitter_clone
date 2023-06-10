class AppwriteConstants {
  static const String databaseId = '647fd34d09d6cffee4af';
  static const String projectId = '6423b38873015f2d09ad';
  static const String endPoint = 'https://baas.pasarjepara.com/v1';
  static const String usersCollection = '647fd35f75f2fee066e9';
  static const String tweetsCollection = '648438ece36a7fdc500b';
  static const String imagesBucket = '64844fbae2f178ef174e';
  static String imageUrl(String imageId) => 
  '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}
class HomeModel {
  final int? id;
  final String? title;
  final String? thumbnailUrl;

  HomeModel({this.id, this.title, this.thumbnailUrl});
}

List<HomeModel> appBannerList = [
  HomeModel(
    id: 1,
    title: 'Spider Man',
    thumbnailUrl: 'assests/images/spider_img.jpeg',
  ),
  HomeModel(
    id: 2,
    title: 'Space',
    thumbnailUrl: 'assests/images/space_img.jpg',
  ),
  HomeModel(
    id: 3,
    title: 'Nature',
    thumbnailUrl: 'assests/images/nature_image.jpg',
  ),
];

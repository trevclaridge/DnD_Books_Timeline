part of view;

class BookTile extends StatelessWidget {
  final String bookTitle;
  final String publishedDate;
  final String imageUrl;
  final int linkCount;
  const BookTile({
    Key? key,
    required this.bookTitle,
    required this.publishedDate,
    required this.imageUrl,
    required this.linkCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
            color: Colors.black12),
        width: 530.0,
        height: 230.0,
        child: Row(
          children: [
            // Image.asset('assets/images/players_handbook.jpg'),
            // Image.network(imageUrl),
            // CachedNetworkImage(
            //     imageUrl:
            //         'https://cdn11.bigcommerce.com/s-9im8f1/images/stencil/1280x1280/products/4097/1583/81pViXqeVLL__74431.1587749379.jpg?c=2'),
            MyImage(
              imageUrl: imageUrl,
            ),
            const SizedBox(width: 60.0),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookTitle,
                    style: const TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Text(
                    publishedDate,
                    style: const TextStyle(
                        color: Colors.blueAccent, fontSize: 14.0),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: linkCount,
                      itemBuilder: (context, index) {
                        return IconButton(
                            onPressed: () {}, icon: const Icon(Icons.check));
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  final String imageUrl;

  const MyImage({Key? key, required this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      imageUrl,
      (int _) => ImageElement()
        ..src = imageUrl
        ..style.width = '100%'
        ..style.height = '100%',
    );
    // ignore: sized_box_for_whitespace
    return Container(
      width: 145,
      child: HtmlElementView(
        viewType: imageUrl,
      ),
    );
  }
}

part of view;

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DnD Book Timeline'),
      ),
      body: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        itemCount: Data().books.length,
        separatorBuilder: (BuildContext context, int index) {
          return Align(
            alignment: Alignment.center,
            child: Container(height: 30.0, width: 7.0, color: Colors.black45),
          );
        },
        itemBuilder: (context, index) {
          var f = DateFormat('MMMM d, yyyy');
          return BookTile(
              bookTitle: Data().books.elementAt(index).title!,
              publishedDate:
                  f.format(Data().books.elementAt(index).publishedDate!),
              imageUrl: Data().books.elementAt(index).imageUrl!,
              linkCount: Data().books.elementAt(index).links.length);
        },
      ),
    );
  }
}

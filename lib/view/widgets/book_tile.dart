part of view;

class BookTile extends StatelessWidget {
  const BookTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //   return ListTile(
    //       // leading: Image.network(
    //       //     'https://cdn11.bigcommerce.com/s-9im8f1/images/stencil/1280x1280/products/4097/1583/81pViXqeVLL__74431.1587749379.jpg?c=2'),
    //       leading: ConstrainedBox(
    //         constraints: const BoxConstraints(minHeight: 200.0, minWidth: 30.0),
    //         child: Image.asset('assets/images/players_handbook.jpg'),
    //       ),
    //       title: const Text('Player\'s Handbook'),
    //       subtitle: const Text('August 19, 2014'));
    // }
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
          color: Colors.black12),
      width: 430.0,
      height: 230.0,
      child: Row(
        children: [
          // Image.asset('assets/images/players_handbook.jpg'),
          Image.network(
              'https://cdn11.bigcommerce.com/s-9im8f1/images/stencil/1280x1280/products/4097/1583/81pViXqeVLL__74431.1587749379.jpg?c=2'),
          const SizedBox(width: 60.0),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Player\'s Handbook',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                Text(
                  'August 19, 2014',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 14.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

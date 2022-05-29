part of model;

class Data {
  List<Book> books = [
    Book(
        'Player\'s Handbook',
        DateTime.parse('2014-08-19'),
        'https://cdn11.bigcommerce.com/s-9im8f1/images/stencil/1280x1280/products/4097/1583/81pViXqeVLL__74431.1587749379.jpg?c=2',
        [
          'Amazon',
          'Walmart' 'DriveThruRPG',
          'Ebay',
          'AbeBooks',
          '',
          '',
          '',
          ''
        ]),
    Book(
        'Monster Manual',
        DateTime.parse('2014-09-30'),
        'https://www.boardgamequest.com/wp-content/uploads/2015/01/Monster-Manual-Cover-Art.jpg',
        ['Amazon']),
    Book(
        'Dungeon Master\'s Guide',
        DateTime.parse('2014-12-09'),
        'https://cdn.shopify.com/s/files/1/0014/6410/7072/products/655018514_1080x.jpg?v=1573060743',
        ['Amazon']),
    Book('Sword Coast Adventurer\'s Guide', DateTime.parse('2015-11-03'),
        'https://www.tsrarchive.com/5e/5e-acc-coast.jpg', ['Amazon']),
    Book(
        'Volo\'s Guide to Monsters',
        DateTime.parse('2016-11-15'),
        'https://cdn.shopify.com/s/files/1/0424/5831/6966/products/volo.jpg?v=1606351632',
        ['Amazon']),
  ];
}

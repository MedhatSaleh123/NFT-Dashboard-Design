import 'package:ecommerce/model/item_profile.dart';
import 'package:ecommerce/model/recent_model.dart';

import '../../model/Item_model.dart';

class AppList {
  static final List image = const [
    'images/headers/1.png',
    'images/headers/2.png',
    'images/headers/3.png',
    'images/headers/4.png',
    'images/headers/5.png',
    'images/headers/6.png',
  ];

  static final List images = const [
    "images/setting/mail.svg",
    "images/setting/cart.svg",
    "images/setting/message.svg",
    "images/setting/clock.svg",
    "images/setting/wallet.svg",
    "images/setting/set3.svg",
    "images/setting/setting.svg",
    "",
    "images/setting/logout.svg",
  ];
  static final List recent = [
    RecentModel(
        name: 'by @rudepixxel',
        image: "images/profile/4.png",
        time: '6.25 ETH',
        number: 'crystal_Art'),
    RecentModel(
        name: 'by @songking',
        image: "images/profile/5.png",
        time: '7.50 ETH',
        number: 'creative Art'),
  ];
  static final List items = [
    ItemModel(
        time: '02:32:07',
        number: "232",
        image: 'images/items/11.png',
        name: "Stretch Of Time",
        image2: 'images/items/a.png'),
    ItemModel(
        time: '00:00:00',
        number: "172",
        image: 'images/items/22.png',
        name: "Arcade Land",
        image2: 'images/items/b.png'),
    ItemModel(
        time: '12:05:00',
        number: "99",
        image: 'images/items/33.png',
        name: "Shinsekai Portai",
        image2: 'images/items/c.png'),
    ItemModel(
        time: '06:32:00',
        number: "433",
        image: 'images/items/44.png',
        name: "Paper Cut",
        image2: 'images/items/d.png'),
    ItemModel(
        time: '08:32:07',
        number: "533",
        image: 'images/items/55.png',
        name: "Stretch Time",
        image2: 'images/items/e.png'),
    ItemModel(
        time: '024:32:07',
        number: "543",
        image: 'images/items/66.png',
        name: "Paper Cut",
        image2: 'images/items/f.png'),
  ];
  static final List itemsProfile = [
    ItemProfile(number: "120", name: "Asset"),
    ItemProfile(number: "10k", name: "Followers"),
    ItemProfile(number: "70k", name: "Likes"),
    ItemProfile(number: "60", name: "Bidding"),
  ];
   static final List itemss = [
    ItemProfile(number: "88.024", name: "astor33"),
    ItemProfile(number: "172.023", name: "dicor"),
    ItemProfile(number: "73.978", name: "micle"),
    ItemProfile(number: "44.243", name: "11 eror D."),
    ItemProfile(number: "53.443", name: "astroo1"),

    ItemProfile(number: "23.543", name: "astroo2"),
  ];
}

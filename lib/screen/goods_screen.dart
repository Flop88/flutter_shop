import 'package:flutter/material.dart';
import 'package:flutter_shop/components/goods_card.dart';
import 'package:flutter_shop/model/Goods.dart';

class GoodsScreen extends StatelessWidget {
  final goods = <Goods>[
    Goods(
        brand: "Apple",
        model: "iPhone 11 Pro Max",
        type: "Телефон",
        img:
        "https://static.re-store.ru/upload/resize_cache/iblock/08c/1160_880_17f5c944b3b71591cc9304fac25365de2/08cdbcf697c6aa451b3fcde646bb4310.jpg",
        price: "89 990 ₽",
        description: """
1. Дисплей представляет собой прямоугольник с закруглёнными углами. Диагональ этого прямоугольника без учёта закруглений составляет 5,85 дюйма (для iPhone 11 Pro), 6,46 дюйма (для iPhone 11 Pro Max) или 6,06 дюйма (для iPhone 11). Фактическая область просмотра меньше.
2. Время работы от аккумулятора зависит от настроек и характера использования устройства. Подробнее на странице apple.com/ru/batteries.
3. По сравнению с предыдущим поколением.
Некоторые функции могут быть доступны не во всех странах и регионах.
Часть доходов от продажи каждого (PRODUCT)RED перечисляется в Глобальный фонд для борьбы со СПИДом в Африке.
"""),
    Goods(
        brand: "Apple",
        model: "iPhone 11 Pro",
        type: "Телефон",
        img:
        "https://static.re-store.ru/upload/resize_cache/iblock/4ad/1160_880_17f5c944b3b71591cc9304fac25365de2/4ad6db2297d8e9270313692120646550.jpg",
        price: "96 990 ₽",
        description: """
1. Дисплей представляет собой прямоугольник с закруглёнными углами. Диагональ этого прямоугольника без учёта закруглений составляет 5,85 дюйма (для iPhone 11 Pro), 6,46 дюйма (для iPhone 11 Pro Max) или 6,06 дюйма (для iPhone 11). Фактическая область просмотра меньше.
2. Время работы от аккумулятора зависит от настроек и характера использования устройства. Подробнее на странице apple.com/ru/batteries.
3. По сравнению с предыдущим поколением.
Некоторые функции могут быть доступны не во всех странах и регионах.
Часть доходов от продажи каждого (PRODUCT)RED перечисляется в Глобальный фонд для борьбы со СПИДом в Африке.
"""),
    Goods(
        brand: "Apple",
        model: "Apple SE 2020",
        type: "Телефон",
        img:
        "https://static.re-store.ru/upload/resize_cache/iblock/874/1160_880_17f5c944b3b71591cc9304fac25365de2/874afe31abc6135201fc8c93fbf3b03e.jpg",
        price: "53 990 ₽",
        description: """
iPhone SE (2-го поколения) устойчив к воздействию брызг, воды и пыли и протестирован в специально поддерживаемых лабораторных условиях. Устройство имеет рейтинг IP67 по стандарту IEC 60529 (допускается погружение на глубину до 1 метра длительностью до 30 минут). Устойчивость к воздействию брызг, воды и пыли может снижаться при естественном износе. Не пытайтесь заряжать мокрый iPhone: протрите и высушите его согласно инструкциям в руководстве пользователя. Повреждение в результате контакта с жидкостью не покрывается гарантией.
Все заявленные характеристики аккумулятора зависят от настроек сети и других факторов; фактическое время работы может не совпадать с указанным. Аккумулятор допускает ограниченное число циклов зарядки. По прошествии некоторого времени может потребоваться его замена в авторизованном сервисном центре Apple. Время работы от аккумулятора и число циклов зарядки зависят от настроек и характера использования устройства. Подробнее на страницах apple.com/ru/batteries и apple.com/ru/iphone/battery.html.
Требуется тарифный план передачи данных. Сети 4G LTE Advanced и 4G LTE доступны не во всех регионах и не у всех операторов связи. Скорость рассчитана на основе теоретической пропускной способности и зависит от местных условий. Подробную информацию о поддержке LTE можно получить у вашего оператора связи или на странице apple.com/ru/iphone/LTE.
Поддерживается на AirPods (1‑го поколения или новее), Powerbeats Pro, Beats
 
Solo3 Wireless, BeatsX, Beats Studio3 Wireless и Powerbeats3 Wireless. Требуется новейшая версия iOS.
Для использования eSIM требуется тарифный план беспроводной связи (может иметь ограничения в выборе оператора связи и в роуминге даже по истечении контракта). Не все операторы связи поддерживают eSIM. При покупке iPhone у некоторых операторов связи функция eSIM может быть отключена. За дополнительной информацией обратитесь к своему оператору связи. Подробнее на странице support.apple.com/ru-ru/HT209044.
Тестирование проводилось компанией Apple в феврале 2020 года на контрольных образцах iPhone SE (2‑го поколения) с предварительной версией ПО; использовались адаптеры питания Apple USB‑C (модель A1720 — 18 Вт, модель A1882 — 30 Вт). Тестирование быстрой зарядки проводилось на разряженных образцах iPhone. Время зарядки зависит от окружающих условий; фактическое время может не совпадать с указанным.
Требуется подписка на Apple Music.
Стоимость подписки составляет 199 рублей в месяц по окончании пробного периода. Единая подписка на всю группу Семейного доступа. Предложение действительно в течение 3 месяцев после активации соответствующего устройства. Подписка продлевается автоматически; отказаться можно в любой момент. Имеются определённые ограничения и другие условия. Подробнее на странице apple.com/ru/promo.
"""),
    Goods(
        brand: "Apple",
        model: "Watch Series 5, 44 мм",
        type: "Часы",
        img:
        "https://static.re-store.ru/upload/resize_cache/iblock/c1d/1160_880_17f5c944b3b71591cc9304fac25365de2/c1dd0e640afc6bbb25084e700e309e06.jpg",
        price: "34 990 ₽",
        description: """
*Для использования Apple Music требуется подписка.
Некоторые ремешки продаются отдельно.
Для использования Apple Watch Series 5 и Apple Watch Series 3 требуется iPhone 6s или новее с iOS 13 или новее.
Характеристики могут быть изменены. Некоторые функции, приложения и сервисы могут быть доступны не во всех регионах и не на всех языках. Полный список приведён на странице apple.com/ru/watchos/feature-availability.
"""),
    Goods(
        brand: "Apple",
        model: "Watch Series 3, 38 мм",
        type: "Часы",
        img:
        "https://static.re-store.ru/upload/resize_cache/iblock/53e/1000_786_17f5c944b3b71591cc9304fac25365de2/53ee8705999d2c251eb509ec6fb7ea45.jpg",
        price: "15 990 ₽",
        description: """
*Для использования Apple Music требуется подписка.
Некоторые ремешки продаются отдельно.
Для использования Apple Watch Series 5 и Apple Watch Series 3 требуется iPhone 6s или новее с iOS 13 или новее.
Характеристики могут быть изменены. Некоторые функции, приложения и сервисы могут быть доступны не во всех регионах и не на всех языках. Полный список приведён на странице apple.com/ru/watchos/feature-availability.
"""),
    Goods(
        brand: "Apple",
        model: "iPad Pro (2020)",
        type: "Планшет",
        img: "https://static.re-store.ru/upload/resize_cache/iblock/36b/1160_880_17f5c944b3b71591cc9304fac25365de2/36b08033499ceb57532f03138e53f477.jpg",
        price: "100 990 ₽",
        description: """
        Ваш будущий компьютер
        теперь не компьютер.Он быстрее многих ноутбуков. У него камеры уровня Pro и сканер LiDAR. А ещё им можно управлять с помощью трекпада.
        Подробнее
        Клавиатура Magic Keyboard появится в продаже позже."""),
    Goods(
        brand: "Apple",
        model: "iPad Air Wi-Fi",
        type: "Планшет",
        img: "https://static.re-store.ru/upload/resize_cache/iblock/645/1160_880_17f5c944b3b71591cc9304fac25365de2/645526e360c2a7f5f0ec92f889cbf597.jpg",
        price: "52 990 ₽",
        description: """iPad Air. Всем любителям мощных технологий.
        iPad Air открывает широкий доступ к нашим самым передовым разработкам. Процессор A12 Bionic с системой Neural Engine. Дисплей Retina 10,5 дюйма с технологией True Tone. Поддержка Apple Pencil и клавиатуры Smart Keyboard. Кроме того, при толщине всего 6,1 мм iPad Air весит менее 500 г — вы легко сможете всегда держать его при себе.
        Подробнее об особенностях и преимуществах iPad Air."""),
    Goods(
        brand: "Apple",
        model: "iPad mini 2019",
        type: "Планшет",
        img: "https://static.re-store.ru/upload/resize_cache/iblock/18d/1160_880_17f5c944b3b71591cc9304fac25365de2/18d35c9d91792492ad020825f8af93ce.jpg",
        price: "56 490",
        description: """iPad mini. Совсем как большой.
        iPad mini идеально сочетает в себе компактность и производительность — за это его и любят. Теперь для любви появилось ещё больше поводов. Процессор A12 Bionic с системой Neural Engine. Дисплей Retina 7,9 дюйма с технологией True Tone. И поддержка Apple Pencil, чтобы вам было ещё проще следовать за вдохновением. Это всё тот же iPad mini, но теперь он умеет больше.
        Теперь с поддержкой Apple Pencil.
        """),
    Goods(
        brand: "Apple",
        model: "MacBook Air 13",
        type: "Ноутбук",
        img: "https://static.re-store.ru/upload/resize_cache/iblock/8da/1160_880_17f5c944b3b71591cc9304fac25365de2/8da3f1317832869896f9602f6a22cea9.jpg",
        price: "89 990 ₽",
        description: """
        Ускорение. С лёгкостью.
        Невероятно тонкий и лёгкий MacBook Air стал ещё мощнее. Он оснащён великолепным дисплеем Retina, новой клавиатурой Magic Keyboard, Touch ID, до двух раз более производительными процессорами, более быстрой графической системой и в два раза более вместительным накопителем. Его изящный корпус с культовым дизайном производится только из переработанного алюминия, поэтому это самый экологичный Mac в истории. А благодаря аккумулятору на целый день работы этот универсальный ноутбук готов помогать вам весь день."""),
    Goods(
        brand: "Apple",
        model: "MacBook Pro 16",
        type: "Ноутбук",
        img: "https://static.re-store.ru/upload/resize_cache/iblock/095/1160_880_17f5c944b3b71591cc9304fac25365de2/0953055cc4f5a3940d2e8b7ead8f95e1.jpg",
        price: "369 990 ₽",
        description: """Машина
        для мечты.Новый MacBook Pro — наш самый мощный ноутбук, созданный для тех, кто меняет мир и раздвигает границы. Впечатляющий дисплей Retina 16 дюймов, невероятно быстрый процессор, графическая карта нового поколения, самый высокий ресурс аккумулятора для MacBook Pro, новая клавиатура Magic Keyboard и вместительный накопитель — это лучший профессиональный ноутбук для самых серьёзных профессионалов.
        Следите за информацией
        о начале продаж"""),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: goods.length,
        itemBuilder: (context, index) {
          return GoodsCard(goods: goods[index]);
        },
      ),
    );
  }
}
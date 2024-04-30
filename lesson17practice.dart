import 'dart:ffi';

void main() {
  Country newZealand = Country('Новая Зеландия ', 'умеренный ', 'Маори', 5.124);

  newZealand.showCounrInfo();
  print(newZealand.showCounrInfoReturn());

  Country egipt = Country('Египет', 'тропик/субтропик ', 'арабский', null);

  egipt.showCounrInfo();
  print(egipt.showCounrInfoReturn());

  Car bima = Car(472, 'green', 'BMW 740 HAMANN', 200);
  print(bima.showCarInfoReturn());

  Car benzo = Car(null, 'grey', 'w124', 18000);
  print(benzo.showCarInfoReturn());

  Phone pixel = Phone('pixel', 8, 'pro', null);
  pixel.showPhoneInfo();

  Phone aplle = Phone('aply', 15, 'pro', 187);
  aplle.showPhoneInfo();

  Phone nokia = Phone('nokia', 8800, 'sirocco', 137);
  nokia.showPhoneInfo();
}

// Надо создать два класса а именно Country and Car
// 1) Country - класс имеет поле название, климат и метод описание
// 1 вариант (метод должен принтануть значения)
// 2 вариант (метод должен не принтовать, а возвращать "return" название,
// место и климат)
class Country {
  String? name;
  String? climate;
  String? language;
  double? population;

  Country(
    this.name,
    this.climate,
    this.language,
    this.population,
  );

  void showCounrInfo() {
    print('=' * 70);
    print('name: $name');
    print('climate: $climate');
    print('languige: $language');
    print('populati: ${population ?? '-'}');
  }

  String showCounrInfoReturn() {
    print('=' * 70);
    return 'name: $name, climate: $climate, lahguige: $language: ,populate ${population ?? '-'} ';
  }
}

// 2) Car - имеет поле мощность, цвет, название, цена и метод описание (метод
// должен не принтовать, а возвращать "return" характеристики машины)
class Car {
  int? power;
  String? color;
  String? name;
  int? price;

  Car(
    this.power,
    this.color,
    this.name,
    this.price,
  );

  showCarInfoReturn() {
    print('=' * 70);
    return 'power: ${power ?? '-'}, color: $color, name; $name, price: $price';
  }
}

// 3) 1 Создайте класс Phone, который содержит
// переменные number, model и weight.
// 1 Создайте три экземпляра этого класса.
// 2 Выведите на консоль

class Phone {
  String? name;
  int? nubmer;
  String? model;
  int? weight;

  Phone(
    this.name,
    this.nubmer,
    this.model,
    this.weight,
  );

  showPhoneInfo() {
    print('=' * 70);
    print('name: $name');
    print('model: $model');
    print('namber: $nubmer');
    print('weight: ${weight ?? '-'}');
  }
}

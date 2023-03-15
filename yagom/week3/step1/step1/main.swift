//
//  main.swift
//  step1
//
//  Created by 이진 on 2023/03/12.
//

import Foundation

enum Coffee: String {
    case americano: String = "아메리카노"
    case cappuccino: String = "카푸치노"
    case caffeLatte: String = "카페라떼"
}

class Person {
    var money: Int
    init(money: Int) {
        self.money = money
    }

    func buyCoffee() {
        print("커피를 구매합니다")
    }
}

class CoffeeShop {
    var sales: Int
    let menuTable: Dictionary<String, Int> = ["americano" : 2000, "cappuccino" : 3000, "caffeLatte" : 4000]
    var pickUpTable: Array<String> = Array<String>()
    init(sales: Int) {
        self.sales = sales
    }
    func orderCoffee(menu: Coffee) {
        pickUpTable.append(menu.rawValue)
    }
}

// let misterLee = Person(money: 500000)
// let missKim = Person(money: 1000000)

// let starbucks = CoffeeShop(sales: 1)
// starbucks.orderCoffee(menu: Coffee.americano)
// print(starbucks.pickUpTable)

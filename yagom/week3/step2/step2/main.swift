//
//  main.swift
//  step2
//
//  Created by 이진 on 2023/03/15.
//

import Foundation

enum Coffee: String {
    case americano = "아메리카노"
    case caffeLatte = "라떼"
    case greenTea = "녹차"
}

class CoffeeShop {
    var sales: Int
    var pickUpTable: Array<String> = Array<String>()
    init(sales: Int){
        self.sales = sales
    }
    
    func make(_ coffee: Coffee, for name: String) {
        pickUpTable.append(coffee.rawValue)
        print("\(name)님이 주문하신 \(coffee)(이/가) 준비되었습니다.")
    }
}

class Person {
    var name: String
    var age: Int
    var money: Int
    let menuTable: Dictionary<Coffee, Int> = [.americano: 3000, .caffeLatte: 5000, .greenTea: 4000]
    init(name: String, age: Int, money: Int) {
        self.name = name
        self.age = age
        self.money = money
    }

    func order(_ coffee: Coffee, of coffeeShop: CoffeeShop) {
        if let menuPrice = menuTable[coffee] {
            if money - menuPrice < 0 {
                print("잔액이 \(menuPrice - money)만큼 모자랍니다")
            } else {
                coffeeShop.make(coffee, for: name)
                money = money - menuPrice
                coffeeShop.sales = coffeeShop.sales + menuPrice
                print("\(name)의 잔액: \(money), 커피숍의 잔액: \(coffeeShop.sales)")
            }
        }
    }
}

let misterLee = Person(name: "jin", age: 13, money: 10000)

let starbucks = CoffeeShop(sales: 50000)

misterLee.order(.americano, of: starbucks)
misterLee.order(.americano, of: starbucks)

//예시에는 order에 name이 argument label로 존재, 그러나 제외

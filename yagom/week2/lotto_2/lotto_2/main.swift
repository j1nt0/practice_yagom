//
//  main.swift
//  lotto_2
//
//  Created by 이진 on 2023/03/02.
//

func arrayIntToString(arrayInt: Array<Int>) -> String {
    let arrayInt = arrayInt
    
    let arrayString = arrayInt.map {String($0)}
    let string = arrayString.joined(separator: ", ")
    
    return string
}

func makeRandomArray(setLength: Int) -> Array<Int> {
    var randomSet = Set<Int>()
    
    while (randomSet.count < setLength) {
        randomSet.insert(Int.random(in: 1...45))
    }
    
    let randomArray = Array(randomSet)
    
    return randomArray
}

func checkLottoNumber(round: Int) {
    var lottoDictionary = Dictionary<String, Array<Int>>()
    
    for round in 1...5{
        lottoDictionary["\(round)회차"] = makeRandomArray(setLength: 6)
    }
    
    let selectedRoundLottoNumber = lottoDictionary["\(round)회차"]
    
    if let optionalBindingSelectedRoundLottoNumber = selectedRoundLottoNumber {
        let string = arrayIntToString(arrayInt: optionalBindingSelectedRoundLottoNumber)
        print("\(round)회차의 로또 당첨 번호는 \(string) 입니다.")
    }
}

checkLottoNumber(round: 4)

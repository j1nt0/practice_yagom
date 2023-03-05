//
//  main.swift
//  lotto_2
//
//  Created by 이진 on 2023/03/02.
//

func makeRandomArray(setLength: Int) -> Array<Int> {
    var randomSet = Set<Int>()
    
    while (randomSet.count < setLength) {
        randomSet.insert(Int.random(in: 1...45))
    }
    
    let randomArray = Array(randomSet)
    
    return randomArray
}

func checkLottoNumber(round: Int) {
    var lottoDictionary = Dictionary<String, Any>()
    
    for round in 1...5{
        lottoDictionary["\(round)회차"] = makeRandomArray(setLength: 6)
    }
    
    let selectedRoundLottoNumber: Any? = lottoDictionary["\(round)회차"]
    
    print(selectedRoundLottoNumber)
}

checkLottoNumber(round: 4)

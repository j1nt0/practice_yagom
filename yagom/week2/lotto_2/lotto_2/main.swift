//
//  main.swift
//  lotto_2
//
//  Created by 이진 on 2023/03/02.
//

func makeRandomSet(num: Int) -> Set<Int>{
    var RandomSet = Set<Int>()
    
    while (RandomSet.count < num){
        RandomSet.insert(Int.random(in:1...45))
    }
    
    return RandomSet
}

func checkLotto(num: Int...){
    let lottoNumbers = makeRandomSet(num: 6)
    let myNumbers = num
    
    var correctNumbers = Set<Int>()
    
    for myNumber in myNumbers{
        if lottoNumbers.contains(myNumber){
            correctNumbers.insert(myNumber)
        }
    }
    
    if correctNumbers.count == 0{
        print("미당첨")
    } else {
        print(correctNumbers)
    }
}

var randomSetA = makeRandomSet(num: 6)

checkLotto(num: 1,2,3,4,5,6)

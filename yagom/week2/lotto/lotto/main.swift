//
//  main.swift
//  lotto
//
//  Created by 이진 on 2023/03/01.
//

func setIntToString(setInt: Set<Int>) -> String {
    let setInt = setInt
    let setString = setInt.map {String($0)}
    let string = setString.joined(separator: ", ")
    
    return string
}

func makeRandomSet(SetLength: Int) -> Set<Int> {
    var RandomSet = Set<Int>()
    
    while (RandomSet.count < SetLength) {
        RandomSet.insert(Int.random(in: 1...45))
    }
    
    return RandomSet
}

func checkLotto(myNumbers: Int...) {
    let lottoNumbers = makeRandomSet(SetLength: 6)
    let myNumbers = myNumbers
    
    var correctNumbers = Set<Int>() //로또와 비교해 맞힌 숫자를 저장할 Set 선언
    
    for myNumber in myNumbers {
        if lottoNumbers.contains(myNumber) {
            correctNumbers.insert(myNumber)
        }
    }
    
    let correctNumberString = setIntToString(setInt: correctNumbers)
    
    if correctNumbers.count == 0 {
        print("아쉽지만 겹치는 번호가 없습니다.")
    } else {
        print("축하합니다! 겹치는 번호는 ", terminator: "")
        print(correctNumberString, terminator: "")
        print(" 입니다!")
    }
}

checkLotto(myNumbers: 1,2,3,4,5,6)

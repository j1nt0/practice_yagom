//
//  main.swift
//  gcd
//
//  Created by 이진 on 2023/03/10.
//

import Foundation

func makeTwoRandomNumber() -> Array<Int> {
    let numbers: Array<Int> = [Int.random(in: 1...999), Int.random(in: 1...999)]
    
    return numbers
}

func gcd(numbers: Array<Int>) {
    var a = numbers[0]
    var b = numbers[1]
    
    print("\(a)와 \(b)의 ", terminator: "")
    
    if a < b {
        let temp = a
        a = b
        b = temp
    }
    
    while b > 0 {
        let c = a % b
        a = b
        b = c
    }
    print("최대공약수는 \(a)입니다.")
}

func gcdByChatGPT(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcdByChatGPT(b, a % b)
    }
}

//
//  main.swift
//  icecream
//
//  Created by 이진 on 2023/02/26.
//

import Foundation

func icecreamRow(rowNum:Int){
    for _ in 1...rowNum{
        print("*",terminator: "")
    }
    print("\r")
}

func icecream(rowNum:Int, columnNum:Int, barLength:Int){
    for _ in 1...columnNum{
        icecreamRow(rowNum: rowNum)
    }
    
    var barNumOne:Int = (rowNum - 3)/2  //바가 시작하는 위치 구하기
    var barA = String(repeating: " ", count: barNumOne)
    for _ in 1...barLength{
        print("\(barA)| |\(barA)")
    }
}

icecream(rowNum: 8, columnNum: 10, barLength: 4)


//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let myLottoNumbers: [Int] = [1, 2, 3, 4, 5, 6]

// 로또 당첨 번호를 생성하는 함수
func pickWinningNumber() -> Set<Int> {
    var winningNumber: Set<Int> = Set<Int>()
    while winningNumber.count < 6 {
        winningNumber.insert(Int.random(in: 1...45))
    }
    return winningNumber
}

// 겹치는 숫자를 확인하는 함수
func checkOverlap(win: Set<Int>) {
    let overlapNumber: Set<Int> = win.intersection(myLottoNumbers)
    guard overlapNumber.count > 0 else {
        print("아쉽지만 겹치는 번호가 없습니다.")
        return
    }
    print("축하합니다! 겹치는 번호는 \(overlapNumber)입니다!")
}
// 실행
checkOverlap(win: pickWinningNumber())

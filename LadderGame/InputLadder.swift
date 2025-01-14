//
//  input.swift
//  LadderGame
//
//  Created by Denis on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class InputLadder {
    static func readHeight() -> Int {
        print("사다리 높이를 입력해주세요.")
        return Int(safeRead()) ?? 0
    }

    static func readPlayerNames() -> [String] {
        print("참여할 사람 이름을 입력하세요.")
        return safeRead().split(separator: ",").map{String($0)}
    }
    
    private static func safeRead() -> String {
        return readLine() ?? ""
    }
}

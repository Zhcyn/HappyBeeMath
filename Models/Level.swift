import Foundation
class Level {
    var id: Int
    var subLevels: [Sublevel] = []
    init(leftOperand: Int) {
        self.id = leftOperand
        var rightOperands = Constants.numbers
        objc_sync_enter(rightOperands)
        for _ in 0..<rightOperands.count {
            let rightIndex = Int.random(in: 0..<rightOperands.count)
            let right = rightOperands[rightIndex]
            rightOperands.remove(at: rightIndex)
            let sublevel = Sublevel(left: leftOperand, right: right)
            subLevels.append(sublevel)
        }
        objc_sync_exit(rightOperands)
    }
}

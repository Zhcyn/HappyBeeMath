import Foundation
class Evidence {
    var text: String
    var result: Int
    var isLeft: Bool
    var wrong = false
    init(leftOperand: Int, rightOperand: Int) {
        self.text = "\(leftOperand) * \(rightOperand)"
        self.result = leftOperand * rightOperand
        isLeft = rightOperand % 2 != 0
    }
}

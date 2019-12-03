import UIKit
class LevelCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel! {
        didSet {
            label.layer.cornerRadius = label.frame.height / 2
            label.layer.masksToBounds = true
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setupCell(level: Int) {
        label.text = "\(level)"
    }
}

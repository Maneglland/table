
var ticketCount = 1
var currentItem: Int?

@IBAction func leftButton(_ sender: UIButton) {

if currentItem != 0, currentItem != nil {
    
    ticketCount -= 1
    titleLabel.text = "\((ticketCount)) of \(ticketListtData?.result?.tickets?.count ?? 0) Tickets"
    
    currentItem! -= 1
    let indexPath = IndexPath(item: currentItem!, section: 0)
    qrCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    adCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    
    
} else {
    print("No item to go to previous left")
}
}

@IBAction func rightButton(_ sender: UIButton) {

guard let totalItems = ticketListtData?.result?.tickets?.count else { return }
if currentItem! < totalItems - 1 {
    
    ticketCount += 1
    
    titleLabel.text = "\((ticketCount)) of \(ticketListtData?.result?.tickets?.count ?? 0) Tickets"
    
    currentItem! += 1
    let indexPath = IndexPath(item: currentItem!, section: 0)
    qrCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    adCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    
} else {
    print("No item to go to next right")
}    
}

func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    currentItem = indexPath.row - 1
}


var ticketCount = 1
var currentItem: Int = 0 // initialize currentItem to 0

override func viewDidLoad() {
super.viewDidLoad()
titleLabel.text = "\(ticketCount) of \(ticketListtData?.result?.tickets?.count ?? 0) Tickets"
}

@IBAction func leftButton(_ sender: UIButton) {
if currentItem > 0 { // check if currentItem is already at the first item
    ticketCount -= 1
    titleLabel.text = "\(ticketCount) of \(ticketListtData?.result?.tickets?.count ?? 0) Tickets"
    
    currentItem -= 1
    let indexPath = IndexPath(item: currentItem, section: 0)
    qrCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    adCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
} else {
    print("No item to go to previous left")
}
}

@IBAction func rightButton(_ sender: UIButton) {
guard let totalItems = ticketListtData?.result?.tickets?.count else { return }
if currentItem < totalItems - 1 { // check if currentItem is already at the last item
    ticketCount += 1
    
    titleLabel.text = "\(ticketCount) of \(totalItems) Tickets"
    
    currentItem += 1
    let indexPath = IndexPath(item: currentItem, section: 0)
    qrCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    adCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
} else {
    print("No item to go to next right")
}    
}

func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
currentItem = indexPath.row
}

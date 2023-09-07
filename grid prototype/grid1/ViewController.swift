import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var titleLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Heading accessibility
        titleLabel.text = "Grid Collection"
            
        titleLabel.accessibilityTraits = .header
        titleLabel.accessibilityLabel = "Grid Collection"
        
//        CView accessibility
        collectionView.accessibilityLabel = "Grid Collection"
        
//        button accessibility
        
    }
    
    // MARK: - UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4 // You have 4 cells in your collection view
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cellIdentifier = ""
        switch indexPath.row {
        case 0:
            cellIdentifier = "movie1"
        case 1:
            cellIdentifier = "movie2"
        case 2:
            cellIdentifier = "movie3"
        case 3:
            cellIdentifier = "movie4"
        default:
            fatalError("Unexpected IndexPath for UICollectionViewCell.")
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        // Configure your cell here if needed
        return cell
    }
    
    @IBAction func unwindToOriginalViewController(segue: UIStoryboardSegue) {
        // Leave this method empty, as it will be used to simply unwind to this view controller
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToOriginalVC", sender: self)
    }
}

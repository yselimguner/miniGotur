//
//  ViewController.swift
//  Mini Gotur
//
//  Created by Yavuz Güner on 9.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var productTableView: UITableView!
    
    var productList = [Products]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        productTableView.delegate = self
        productTableView.dataSource = self
        
        let p1 = Products(productId: 1, productName: "Benimo", productImage: "benimo", productPrice: 3.5)
        let p2 = Products(productId: 2, productName: "Çikolatalı Extra", productImage: "cikolataliextra", productPrice: 2.0)
        let p3 = Products(productId: 3, productName: "Çikolatalı Gofret", productImage: "cikolataligofret", productPrice: 1.5)
        let p4 = Products(productId: 4, productName: "Çizi", productImage: "cizi", productPrice: 2.0)
        let p5 = Products(productId: 5, productName: "Coca Cola", productImage: "cocacola", productPrice: 3.5)
        let p6 = Products(productId: 6, productName: "Çokonat", productImage: "cokonat", productPrice: 2.0)
        let p7 = Products(productId: 7, productName: "Dido", productImage: "dido", productPrice: 2.0)
        let p8 = Products(productId: 8, productName: "Eti Gofret", productImage: "etigofret", productPrice: 1.5)
        let p9 = Products(productId: 9, productName: "Fanta", productImage: "fanta", productPrice: 3.5)
        let p10 = Products(productId: 10, productName: "Hoşbeş", productImage: "hosbes", productPrice: 5.0)
        let p11 = Products(productId: 11, productName: "Lotus", productImage: "lotus", productPrice: 7.0)
        let p12 = Products(productId: 12, productName: "Su", productImage: "su", productPrice: 1.0)
        let p13 = Products(productId: 13, productName: "Sprite", productImage: "sprite", productPrice: 3.5)
        let p14 = Products(productId: 14, productName: "Negro", productImage: "negro", productPrice: 3.0)
        
        productList.append(p1)
        productList.append(p2)
        productList.append(p3)
        productList.append(p4)
        productList.append(p5)
        productList.append(p6)
        productList.append(p7)
        productList.append(p8)
        productList.append(p9)
        productList.append(p10)
        productList.append(p11)
        productList.append(p12)
        productList.append(p13)
        productList.append(p14)

    }


}

extension ViewController : UITableViewDelegate,UITableViewDataSource,ProoductTableViewCellProtocol {
    func giveOrder(indexPath: IndexPath) {
        let prod = productList[indexPath.row]
        print("\(prod.productName!) sipariş verildi. Tutar \(prod.productPrice!) TL'dir")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let prod = productList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! ProductTableViewCell
        
        cell.productNameLabel.text = prod.productName
        cell.productPriceLabel.text = "\(prod.productPrice!) TL"
        cell.productImage.image = UIImage(named: prod.productImage! )
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
}


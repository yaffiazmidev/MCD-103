//
//  Product.swift
//  MCD-102
//
//  Created by yaffi azmi on 28/05/19.
//  Copyright © 2019 yaffi azmi. All rights reserved.
//

import Foundation

struct Product {
    public private(set) var imageName: String
    public private(set) var productName: String
    public private(set) var price: String
    public private(set) var category: String
    public private(set) var isFeatured: Bool
}

class Catalog: NSObject {
    
    static let products = [
        Product(imageName: "Product0", productName: "Vagabond sack", price: "$120", category: "Accessories", isFeatured:true),
        Product(imageName: "Product1", productName: "Stella sunglasses", price: "$58", category: "Accessories", isFeatured:true),
        Product(imageName: "Product2", productName: "Whitney belt", price: "$35", category: "Accessories", isFeatured:false),
        Product(imageName: "Product3", productName: "Garden strand", price: "$98", category: "Accessories", isFeatured:true),
        Product(imageName: "Product4", productName: "Strut earnings", price: "$34", category: "Accessories", isFeatured:false),
        Product(imageName: "Product5", productName: "Varsity socks", price: "$12", category: "Accessories", isFeatured:false),
        Product(imageName: "Product6", productName: "Weave keyring", price: "$16", category: "Accessories", isFeatured:false),
        Product(imageName: "Product7", productName: "Gatsby hat", price: "$40", category: "Accessories", isFeatured:true),
        Product(imageName: "Product8", productName: "Shrug bag", price: "$198", category: "Accessories", isFeatured:true),
        Product(imageName: "Product9", productName: "Gilt desk trio", price: "$58", category: "Home", isFeatured:true),
        Product(imageName: "Product10", productName: "Copper wire rack", price: "$18", category: "Home", isFeatured:false),
        Product(imageName: "Product11", productName: "Soothe ceramic set", price: "$28", category: "Home", isFeatured:false),
        Product(imageName: "Product12", productName: "Hurrahs tea set", price: "$34", category: "Home", isFeatured:false),
        Product(imageName: "Product13", productName: "Blue stone mug", price: "$18", category: "Home", isFeatured:true),
        Product(imageName: "Product14", productName: "Rainwater tray", price: "$27", category: "Home", isFeatured:true),
        Product(imageName: "Product15", productName: "Chambray napkins", price: "$16", category: "Home", isFeatured:true),
        Product(imageName: "Product16", productName: "Succulent planters", price: "$16", category: "Home", isFeatured:true),
        Product(imageName: "Product17", productName: "Quartet table", price: "$175", category: "Home", isFeatured:true),
        Product(imageName: "Product18", productName: "Kitchen quattro", price: "$129", category: "Home", isFeatured:false),
        Product(imageName: "Product19", productName: "Clay sweater", price: "$48", category: "Clothing", isFeatured:false),
        Product(imageName: "Product20", productName: "Sea tunic", price: "$45", category: "Clothing", isFeatured:false),
        Product(imageName: "Product21", productName: "Plaster tunic", price: "$38", category: "Clothing", isFeatured:false),
        Product(imageName: "Product22", productName: "White pinstripe shirt", price: "$70", category: "Clothing", isFeatured:false),
        Product(imageName: "Product23", productName: "Chambray shirt", price: "$70", category: "Clothing", isFeatured:false),
        Product(imageName: "Product24", productName: "Seabreeze sweater", price: "$60", category: "Clothing", isFeatured:true),
        Product(imageName: "Product25", productName: "Gentry jacket", price: "$178", category: "Clothing", isFeatured:false),
        Product(imageName: "Product26", productName: "Navy trousers", price: "$74", category: "Clothing", isFeatured:false),
        Product(imageName: "Product27", productName: "Walter henley (white)", price: "$38", category: "Clothing", isFeatured:true),
        Product(imageName: "Product28", productName: "Surf and perf shirt", price: "$48", category: "Clothing", isFeatured:true),
        Product(imageName: "Product29", productName: "Bixby scarf", price: "$98", category: "Clothing", isFeatured:true),
        Product(imageName: "Product30", productName: "Ramona crossover", price: "$68", category: "Clothing", isFeatured:true),
        Product(imageName: "Product31", productName: "Chambray shirt", price: "$38", category: "Clothing", isFeatured:false),
        Product(imageName: "Product32", productName: "Classic white collar", price: "$58", category: "Clothing", isFeatured:false),
        Product(imageName: "Product33", productName: "Cerise scallop tee", price: "$42", category: "Clothing", isFeatured:true),
        Product(imageName: "Product34", productName: "Shoulder rolls tee", price: "$27", category: "Clothing", isFeatured:false),
        Product(imageName: "Product35", productName: "Grey slouch tank", price: "$24", category: "Clothing", isFeatured:false),
        Product(imageName: "Product36", productName: "Sunshirt dress", price: "$58", category: "Clothing", isFeatured:false),
        Product(imageName: "Product37", productName: "Fine lines tee", price: "$58", category: "Clothing", isFeatured:true),
        ]
    
    static var filteredProducts: [Product] = products
}

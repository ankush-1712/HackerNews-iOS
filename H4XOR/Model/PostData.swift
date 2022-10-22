//
//  PostData.swift
//  H4XOR
//
//  Created by Ankush Gussain on 21/10/22.
//

import Foundation

struct Results:Decodable{
    let hits: [Post]
}

struct Post:Decodable,Identifiable{
    var id: String{
        return objectID
    }
    
    let objectID:String
    let points:Int
    let title:String
    let url:String?
}


//
//  Champions.swift
//  TryTingg
//
//  Created by Darot on 24/04/2022.
//

import Foundation
struct Champion : ListItem, Identifiable {
    var id: Int
    var name:String
    var country:String
    var position:String
    var picture:String
    var description:String
    let latitude: Double
    let longitude: Double
    
    static func champions() -> [Champion]{
        var champions:[Champion] = [Champion]()
        do{
            champions = try decoderWithoutErrorHandling(fileName:"champions")
        }
        catch let error {
            debugPrint(error)
        }
        
        return champions
    }
}

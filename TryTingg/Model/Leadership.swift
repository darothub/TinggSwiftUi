//
//  LeaderShip.swift
//  TryTingg
//
//  Created by Darot on 24/04/2022.
//

import Foundation

struct Leadership : ListItem, Identifiable {
    var id: Int
    var name:String
    var position:String
    var picture:String
    var description:String
    
    static func leaderships() -> [Leadership]{
        var leaderships:[Leadership] = [Leadership]()
        do{
            leaderships = try decoderWithoutErrorHandling(fileName:"leadership")
        }
        catch let error {
            debugPrint(error)
        }
        
        return leaderships
    }
}

//
//  ListItem.swift
//  TryTingg
//
//  Created by Darot on 24/04/2022.
//

import Foundation
protocol ListItem : Decodable {
    var id: Int { get set }
    var name:String { get }
    var position:String { get }
    var picture:String { get }
    var description:String { get }
}

let dummyImageString = "https://www.hackingwithswift.com/img/paul-2.png"

func example() -> [Leadership]{
    let example = [
        Leadership(id:0, name: "Somebody", position: "CEO", picture: dummyImageString, description: "Chief Executive Officer"),
        Leadership(id:1, name: "Somebody", position: "CEO", picture: dummyImageString, description: "Chief Executive Officer")
    ]
    return example
}


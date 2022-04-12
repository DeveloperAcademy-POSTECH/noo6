//
//  Data.swift
//  Noo6Main
//
//  Created by Eunbi Han on 2022/04/11.
//

import Foundation




// HomeView와 CategoryView에서 사용할 데이터
struct CategoryStorage : Codable, Identifiable {
    let id : Int
    let categoryTitle : String
    let categoryIcon : String
    let isAllCleared : Bool
    let categoryInfo : [CategoryInfo]
    let completedNumber : Int
    let allNumber : Int
}

struct CategoryInfo : Codable, Identifiable {
    let id : Int
    let guideName : String
    let isComplete : Bool
}

//GuideView에서 사용할 데이터
struct dataStruct2: Codable, Identifiable{
    var id : Int
    var guideTitle : String
    var isSound : Bool
    var gideInfo : [GideInfo]
}

struct GideInfo: Codable, Identifiable{
    var id : Int
    var guideView : [String]
    var guideMessage : [String]
    var totalPage : Double
    var voice : [String]
}


// ClearView에서 사용할 데이터
struct ClearStorage : Codable, Identifiable {
    let id : Int
    let clearInfo : Array<ClearInfo>
}

struct ClearInfo : Codable, Identifiable {
    let id : Int
    let clearImage : String
    let clearMessage : String
}

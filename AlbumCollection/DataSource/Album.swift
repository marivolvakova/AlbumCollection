//
//  File.swift
//  Albom-2
//
//  Created by Мария Вольвакова on 11.06.2022.
//

import UIKit


struct Album {
    var lableTitle: String
    var lableNumber: String
    var image: UIImage
    var section: Sections
    
    enum Sections: CaseIterable {
        case myAlbums
        case peopleAndPlaces
        case mediaFiles
        case other
    }
}

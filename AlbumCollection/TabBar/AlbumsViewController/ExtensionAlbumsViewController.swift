//
//  Extancion.swift
//  Albom-2
//
//  Created by Мария Вольвакова on 11.06.2022.
//

import UIKit


// MARK: - ViewController extension

extension AlbumsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model[section].count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return model.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let info = model[indexPath.section][indexPath.item]
        
        switch info.section {
        case .myAlbums, .peopleAndPlaces:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstTypeCell.identifier, for: indexPath) as! FirstTypeCell
            cell.setupCell(data: info)
            return cell
            
        case .mediaFiles, .other:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SecondTypeCell.identifier, for: indexPath) as! SecondTypeCell
            cell.setupCell(data: info)
            
            if indexPath.row == (model[indexPath.section].count - 1) {
                    cell.viewLine.layer.isHidden = true
            } else { cell.viewLine.layer.isHidden = false }
            return cell
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: SectionHeader.identifier, for: indexPath) as! SectionHeader
        
        let infoSection = Album.Sections.allCases[indexPath.section]
        switch infoSection {
        case .myAlbums:
            sectionHeader.label.text = "Мои альбомы"
        case .peopleAndPlaces:
            sectionHeader.label.text = "Люди и места"
        case .mediaFiles:
            sectionHeader.label.text = "Типы медиафайлов"
            sectionHeader.lableAll?.text = nil
        case .other:
            sectionHeader.label.text = "Другое"
            sectionHeader.lableAll?.text = nil
        }
        return sectionHeader
    }
}

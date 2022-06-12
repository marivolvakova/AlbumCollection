//
//  ViewController.swift
//  Albom-2
//
//  Created by Мария Вольвакова on 09.06.2022.
//

import UIKit

class AlbumsViewController: UIViewController {
    
    var collectionView: UICollectionView!
    let cellContent = AlbumCollection()
    
    var model = [[Album]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigationController()
        configureCollectionViewLayout()
        
        model = cellContent.albums
    }
    
    func configureNavigationController() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: nil, action: nil)
        navigationItem.title = "Альбомы"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    func configureCollectionViewLayout() {
        
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
        view.addSubview(collectionView)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .systemBackground
        collectionView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        collectionView.register(FirstTypeCell.self, forCellWithReuseIdentifier: FirstTypeCell.identifier)
        collectionView.register(SectionHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SectionHeader.identifier)
        collectionView.register(SecondTypeCell.self, forCellWithReuseIdentifier: SecondTypeCell.identifier)
        
    }
    // MARK: - CreateLayout
    func createLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { (sectionIndex: Int, layoutEnv: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            let sectionLayoutKind = Album.Sections.allCases[sectionIndex]
        
            switch sectionLayoutKind {
                
            case .myAlbums:
                let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(160),
                                                      heightDimension: .absolute(210))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(160),
                                                       heightDimension: .absolute(210 * 2))
                
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)

                group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)

                let headerSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1.0),
                    heightDimension: .estimated(44))
                let header = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: headerSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.boundarySupplementaryItems = [header]
                return section
                
            case .peopleAndPlaces:
                let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(160),
                                                      heightDimension: .absolute(210))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)

                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(160),
                                                       heightDimension: .absolute(210))
                
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
                
                group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
                
                let headerSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1.0),
                    heightDimension: .absolute(44))
                let header = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: headerSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.boundarySupplementaryItems = [header]
                return section
                
            case .mediaFiles, .other:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .absolute(50))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)

                let groupSize = itemSize
                
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
         
                
                let headerSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1.0),
                    heightDimension: .absolute(44))
                let header = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: headerSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                
                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 5
                section.boundarySupplementaryItems = [header]
                return section
            }
        }
        return layout
    }
}









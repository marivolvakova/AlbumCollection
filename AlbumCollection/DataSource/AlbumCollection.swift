//
//  AlbomCollection.swift
//  Albom-2
//
//  Created by Мария Вольвакова on 11.06.2022.
//

import UIKit

class AlbumCollection {
    
    var albums: [[Album]] = {
        [
            [Album(lableTitle: "Недавние",          lableNumber: "27 850",      image: UIImage(named: "image-1")!,  section: .myAlbums),
             Album(lableTitle: "Избранное",          lableNumber: "135",        image: UIImage(named: "image-2")!,  section: .myAlbums),
             Album(lableTitle: "Тикток",            lableNumber: "650",         image: UIImage(named: "image-3")!,  section: .myAlbums),
             Album(lableTitle: "Картинки",          lableNumber: "1 850",       image: UIImage(named: "image-4")!,  section: .myAlbums),
             Album(lableTitle: "Inshot",            lableNumber: "284",         image: UIImage(named: "image-5")!,  section: .myAlbums),
             Album(lableTitle: "WhatsApp",          lableNumber: "3 987",       image: UIImage(named: "image-6")!,  section: .myAlbums),
             Album(lableTitle: "Instagram",         lableNumber: "300",         image: UIImage(named: "image-7")!,  section: .myAlbums),
             Album(lableTitle: "GoPro",             lableNumber: "2",           image: UIImage(named: "image-8")!,  section: .myAlbums),
             Album(lableTitle: "CapCut",            lableNumber: "4",           image: UIImage(named: "image-9")!,  section: .myAlbums),
             Album(lableTitle: "Pinterest",         lableNumber: "26",          image: UIImage(named: "image-10")!, section: .myAlbums)
            ],
            [Album(lableTitle: "Люди",              lableNumber: "2 567",      image: UIImage(named: "image-11")!, section: .peopleAndPlaces),
             Album(lableTitle: "Места",             lableNumber: "20",      image: UIImage(named: "image-12")!, section: .peopleAndPlaces),
             Album(lableTitle: "Животные",          lableNumber: "520",      image: UIImage(named: "image-13")!, section: .peopleAndPlaces),
             Album(lableTitle: "Локации",           lableNumber: "544",      image: UIImage(named: "image-14")!, section: .peopleAndPlaces)
            ],
            [Album(lableTitle: "Видео",             lableNumber: "3 670",       image: UIImage(systemName: "video")!,                              section: .mediaFiles),
             Album(lableTitle: "Селфи",             lableNumber: "1 224",       image: UIImage(systemName: "person.crop.square")!,                 section: .mediaFiles),
             Album(lableTitle: "Фото Live Photos",  lableNumber: "60",          image: UIImage(systemName: "livephoto")!,                          section: .mediaFiles),
             Album(lableTitle: "Портреты",          lableNumber: "27",          image: UIImage(systemName: "cube")!,                               section: .mediaFiles),
             Album(lableTitle: "Панорамы",          lableNumber: "2",           image: UIImage(systemName: "pano")!,                               section: .mediaFiles),
             Album(lableTitle: "Таймлапс",          lableNumber: "21",          image: UIImage(systemName: "timelapse")!,                          section: .mediaFiles),
             Album(lableTitle: "Замедленно",        lableNumber: "27",          image: UIImage(systemName: "slowmo")!,                             section: .mediaFiles),
             Album(lableTitle: "Серии",             lableNumber: "4",           image: UIImage(systemName: "square.stack.3d.down.right")!,         section: .mediaFiles),
             Album(lableTitle: "Снимки экрана",     lableNumber: "5 583",       image: UIImage(systemName: "camera.viewfinder")!,                  section: .mediaFiles),
             Album(lableTitle: "Записи экрана",     lableNumber: "167",         image: UIImage(systemName: "smallcircle.filled.circle")!,          section: .mediaFiles),
             Album(lableTitle: "Анимированные",     lableNumber: "4",           image: UIImage(systemName: "square.stack.3d.forward.dottedline")!, section: .mediaFiles)
            ],
            [Album(lableTitle: "Импортированные",   lableNumber: "12",          image: UIImage(systemName: "square.and.arrow.down")!,              section: .other),
             Album(lableTitle: "Скрытые",           lableNumber: "0",           image: UIImage(systemName: "eye.slash")!,                          section: .other),
             Album(lableTitle: "Недавно удаленные", lableNumber: "271",         image: UIImage(systemName: "trash")!,                              section: .other)
            ]
        ]
    }()
}

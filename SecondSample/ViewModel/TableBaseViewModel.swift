//
//  TableViewModel.swift
//  SecondSample
//
//  Created by wk.min on 13/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import Foundation
import RxSwift
import SwiftyJSON

class TableViewBaseViewModel {
    var items: [Item]
    var itemKey: Dictionary<String, Item.Type>
    
    init() {
        self.items = [Item]()
        self.itemKey = Dictionary<String, Item.Type>()
    }
    
    func getItemKey() -> Dictionary<String, Item.Type> {
        for type in ItemType.getItemType() {
            self.itemKey[type.itemTypeString!] = type.itemTypeClass
        }
        return self.itemKey
    }
    
    func loadData() -> Observable<Any> {
        // TODO : Call Request API
        let apiClient = ApiClient()
        
        return Observable.create { observer in
            let obj = apiClient.getWelcome().subscribe(
                onNext: { value in
                    let json = JSON(value)
                    let itemsJson = json["items"]
                    
                    for (_,subJson):(String, JSON) in itemsJson {
                        if let classType = self.getItemKey()[subJson["item_type"].string!] {
                            let obj = classType.init().initJSON(data: subJson)
                            self.items.append(obj)
                        }
                    }
                    observer.onNext("Next")
            }, onError: { error in
                print(error)
                observer.onError(error)
            }, onCompleted: {
                observer.onCompleted()
            })
            return Disposables.create(with: obj.dispose)
        }
    }
    
    func itemCount() -> Int {
        return self.items.count
    }
    
    func getItemFromIndex(index: Int) -> Item {
        return self.items[index]
    }
}


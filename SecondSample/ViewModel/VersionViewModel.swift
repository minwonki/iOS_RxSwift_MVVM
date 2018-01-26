//
//  VersionViewModel.swift
//  SecondSample
//
//  Created by wk.min on 14/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import Foundation
import RxSwift

class VersionViewModel {
    var version: String?

    func loadVersion() -> Observable<Any> {
        // TODO : Call Request API
        let apiClient = ApiClient()
       
        return Observable.create { observer in
            let ver = apiClient.getVersion().subscribe(
                onNext: { value in
                    let versionObj: Version = Version(data: value)
                    print(versionObj)
                    self.version = versionObj.version
                    observer.onNext("Next")
            }, onError: { error in
                    observer.onError(error)
            }, onCompleted: {
                    observer.onCompleted()
            })
            
            return Disposables.create(with: ver.dispose)
        }
        
    }
}

//
//  ApiClient.swift
//  SecondSample
//
//  Created by wk.min on 13/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift

class ApiClient: NSObject {

    func getData(_ url: String) -> Observable<Any> {
        return Observable.create { observer in
            let request = Alamofire.request(url).responseJSON { response in
                switch response.result {
                case .success(let value):
                    observer.onNext(value)
                    observer.onCompleted()
                case .failure(let error):
                    observer.onError(error)
                }
            }
            return Disposables.create(with: request.cancel)
        }
    }
}

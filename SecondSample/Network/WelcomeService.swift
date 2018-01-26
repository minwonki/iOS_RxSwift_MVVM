//
//  ServiceExtension.swift
//  SecondSample
//
//  Created by wk.min on 14/12/2017.
//  Copyright © 2017 jobplanet. All rights reserved.
//

import Foundation
import RxSwift

extension ApiClient {
    func getWelcome() -> Observable<Any> {
        let url: String = "https://www.jobplanet.co.kr/api/v3/welcome.json"
        return self.getData(url)
    }
}

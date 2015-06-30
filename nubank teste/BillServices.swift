//
//  BillServices.swift
//  nubank teste
//
//  Created by rodrigo de souza reis on 6/30/15.
//  Copyright (c) 2015 rodrigo de souza reis. All rights reserved.
//

import UIKit


class BillServices: NSObject {
    let url:String = "https://s3-sa-east-1.amazonaws.com/mobile-challenge/bill/bill_new.json"
    var delegate: RootViewController!
    
    func loadBills() {
        
        request(.GET, url, parameters: nil)
            .responseJSON { (request, response, JSON, error) in
                if(error == nil) {
                    let tempDatasource = Mapper<BillApiResponse>().mapArray(JSON)
                    println(JSON)
                    self.delegate.setBills(tempDatasource!)
                } else {
                
                }

        }
    }
}
//
//  DownloadAllHeroesInteractorProtocol.swift
//  HeroesFin
//
//  Created by Alan Casas on 30/1/18.
//  Copyright © 2018 Alan Casas. All rights reserved.
//

import Foundation

typealias onErrorClosure = ((Error)-> Void)?

protocol DownloadAllHeroesInteractorProtocol {
    func executeDownload(onSuccess: @escaping (Heroes) -> Void, onError: onErrorClosure)
    func executeDownload(onSuccess: @escaping (Heroes) -> Void)
}


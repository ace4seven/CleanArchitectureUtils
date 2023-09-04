//
//  File.swift
//  
//
//  Created by Juraj Macák on 04/09/2023.
//

import SwiftUI
import Combine

extension ObservableObject {

    var objectDidChange: AnyPublisher<Void, Never> {
        objectWillChange
            .debounce(for: 0, scheduler: DispatchQueue.main)
            .map { _ in () }
            .eraseToAnyPublisher()
    }
}

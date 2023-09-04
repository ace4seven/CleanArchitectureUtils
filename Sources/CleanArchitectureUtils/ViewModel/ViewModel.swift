//
//  ViewModel.swift
//  CleanArchitectureUtils
//
//  Created by Juraj Macák on 09/07/2023.
//

import SwiftUI
import Combine

public class ViewModel<State: ObservableObject>: ObservableObject {

    @Published var state: State

    internal var cancellables = Set<AnyCancellable>()

    init(state: State) {
        self.state = state

        observeChanges()
    }

    private func observeChanges() {
        state.objectDidChange
            .sink { [weak self] _ in
                self?.objectWillChange.send()
            }
            .store(in: &cancellables)
    }
}

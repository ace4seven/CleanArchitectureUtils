//
//  UseCase.swift
//  CleanArchitectureUtils
//
//  Created by Juraj Macák on 08/07/2023.
//

import Combine

protocol FlowUseCase: AnyObject {

    associatedtype Input
    associatedtype Output
    associatedtype Failure: Error
    
    func callAsFunction(_ input: Input) -> AnyPublisher<Output, Failure>
}

protocol UnitFlowUseCase: AnyObject {

    associatedtype Output
    associatedtype Failure: Error
    
    func callAsFunction() -> AnyPublisher<Output, Failure>
}

protocol UseCase: AnyObject {

    associatedtype Input
    associatedtype Output
    
    func callAsFunction(_ input: Input) -> Output
}

protocol UnitUseCase: AnyObject {

    associatedtype Output

    func callAsFunction() -> Output
}

protocol SuspendUseCase: AnyObject {

    associatedtype Input
    associatedtype Output

    func callAsFunction(_ input: Input) async -> Output
}

protocol SuspendUnitUseCase: AnyObject {

    associatedtype Output

    func callAsFunction() async -> Output
}

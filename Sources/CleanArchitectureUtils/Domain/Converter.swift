//
//  DomainConverter.swift
//  CleanArchitectureUtils
//
//  Created by Juraj Macák on 09/07/2023.
//

import Foundation

protocol DomainConverter: AnyObject {

    associatedtype External
    associatedtype Domain
    
    /// Interface, directive conversion external object into domain object
    /// - Parameter external: DTO, or State object
    /// - Returns: Converted domain object
    func convert(external: External) -> Domain
}

protocol ExternalConverter: AnyObject {

    associatedtype External
    associatedtype Domain
    
    /// Interface, directive conversion domain object into external one
    /// - Parameter domain: Domain object
    /// - Returns: DTO or state objects
    func convert(domain: Domain) -> External
}

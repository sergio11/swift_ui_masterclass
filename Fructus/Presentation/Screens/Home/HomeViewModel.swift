//
//  HomeViewModel.swift
//  Fructus
//
//  Created by Sergio Sánchez Sánchez on 30/12/23.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var fruits: [Fruit] = []
    private var cancellables = Set<AnyCancellable>()
    
    func fetchData() {
        fetchDataPublisher()
            .sink { [weak self] receivedFruits in
                self?.fruits = receivedFruits
            }
            .store(in: &cancellables)
    }
    
    //MARK: Private Methods

    private func fetchDataPublisher() -> AnyPublisher<[Fruit], Never> {
        return Just(fruitsData)
            .delay(for: .seconds(2), scheduler: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
}

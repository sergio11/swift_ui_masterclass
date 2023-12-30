//
//  OnboardingViewModel.swift
//  Fructus
//
//  Created by Sergio Sánchez Sánchez on 30/12/23.
//

import Foundation
import Combine

class OnboardingViewModel: ObservableObject {
    
    @Published var topFruits: [Fruit] = []
    private var cancellables = Set<AnyCancellable>()
    
    func fetchData() {
        fetchDataPublisher()
            .sink { [weak self] receivedFruits in
                self?.topFruits = receivedFruits
            }
            .store(in: &cancellables)
    }
    
    //MARK: Private Methods

    private func fetchDataPublisher() -> AnyPublisher<[Fruit], Never> {
        return Just(Array(fruitsData[0...5]))
            .delay(for: .seconds(2), scheduler: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
}

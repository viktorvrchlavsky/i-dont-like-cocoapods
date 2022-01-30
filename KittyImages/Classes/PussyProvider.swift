//
//  PussyProvider.swift
//  KittyImages
//
//  Created by Viktor Vrchlavsky on 30.01.2022.
//

import Alamofire

public class PussyProvider {
    private let randomPussyStringURL: String

    public init() {
        self.randomPussyStringURL = "https://aws.random.cat/meow"
    }

    public func getRandomPussyPictureURL() async throws -> URL {
        try await AF.request(randomPussyStringURL).serializingDecodable(PussyImage.self).value.url
    }
}

struct PussyImage: Decodable {
    let url: URL

    enum CodingKeys: String, CodingKey {
        case url = "file"
    }
}

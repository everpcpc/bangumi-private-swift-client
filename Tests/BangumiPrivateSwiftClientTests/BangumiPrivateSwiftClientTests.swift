import Foundation
import OpenAPIRuntime
import OpenAPIURLSession
import Testing

@testable import BangumiPrivateSwiftClient

@Test func subjectTopics() async throws {
  let client = Client(
    serverURL: URL(string: "https://next.bgm.tv")!,
    transport: URLSessionTransport()
  )
  let response = try await client.getSubject(path: .init(subjectID: 12))
  let subject = try response.ok.body.json
  #expect(subject.name == "ちょびっツ")
  #expect(subject.nameCN == "人形电脑天使心")
}

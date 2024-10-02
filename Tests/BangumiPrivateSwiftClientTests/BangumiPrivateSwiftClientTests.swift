import Testing
@testable import BangumiPrivateSwiftClient
import OpenAPIRuntime
import OpenAPIURLSession
import Foundation

@Test func subjectTopics() async throws {
    let client = Client(
        serverURL: URL(string: "https://next.bgm.tv")!,
        transport: URLSessionTransport()
    )
    let response = try await client.getSubjectTopicsBySubjectId(path: .init(subjectID: 12))
    let topics = try response.ok.body.json
    // #expect(subject.name == "ちょびっツ")
    // #expect(subject.name_cn == "人形电脑天使心")
}

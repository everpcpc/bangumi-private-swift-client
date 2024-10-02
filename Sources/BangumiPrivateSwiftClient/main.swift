import OpenAPIRuntime
import OpenAPIURLSession
import Foundation

let client = Client(
    serverURL: URL(string: "https://next.bgm.tv")!,
    transport: URLSessionTransport()
)
let response = try await client.getSubjectTopicsBySubjectId(path: .init(subjectID: 12))
switch response {
case .ok(let okResponse):
    switch okResponse.body {
    case .json(let topics):
        print(topics)
    }
case .notFound:
    print("😢 not found")
case .internalServerError:
    print("😡 internal server error")
case .undocumented(statusCode: let statusCode, _):
    print("🥺 undocumented response: \(statusCode)")
}

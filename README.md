# NetworkCombineLibrary

A simple library for use with Combine to make network calls.

## Supports 
- Get
- Patch
- Put
 - Delete


## Example
This can be called from a view model, and the response can be used:

```swift
class ContentViewModel: ObservableObject {
    @Published var users: [User] = []
    var res: AnyCancellable?
    private var networkManager: AnyNetworkManager<URLSession>?
    
    init() {
        self.networkManager = AnyNetworkManager(manager: NetworkManager(session: URLSession.shared))
        
        res = networkManager?.fetch(url: URL(string: "https://jsonplaceholder.typicode.com/posts/1")!, method: .get)
            .sink(receiveCompletion: {comp in
                print (comp)},
                  receiveValue: {
                    val in
                    let decode = JSONDecoder()
                    let decoded = try? decode.decode(User.self, from: val)
                    self.users = [decoded!]
            })
    }
}
```

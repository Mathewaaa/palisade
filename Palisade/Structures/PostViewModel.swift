import Foundation
import FirebaseDatabase

final class PostViewModel: ObservableObject {
    @Published var posts: [Category: [Post]] = [:]
    
    private lazy var sportPath: DatabaseReference? = {
        let ref = Database.database().reference().child("palisade").child("sports")
        return ref
    }()
    
    private lazy var naturePath: DatabaseReference? = {
        let ref = Database.database().reference().child("palisade").child("nature")
        return ref
    }()
    
    private lazy var artPath: DatabaseReference? = {
        let ref = Database.database().reference().child("palisade").child("art")
        return ref
    }()
    private lazy var datingPath: DatabaseReference? = {
        let ref = Database.database().reference().child("palisade").child("dating")
        return ref
    }()
    private lazy var gamingPath: DatabaseReference? = {
        let ref = Database.database().reference().child("palisade").child("gaming")
        return ref
    }()
    private lazy var foodPath: DatabaseReference? = {
        let ref = Database.database().reference().child("palisade").child("food")
        return ref
    }()
    private lazy var feelingsPath: DatabaseReference? = {
        let ref = Database.database().reference().child("palisade").child("feelings")
        return ref
    }()
    private lazy var workPath: DatabaseReference? = {
        let ref = Database.database().reference().child("palisade").child("work")
        return ref
    }()
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    func initThing() {
        posts[Category.sports] = []
        posts[Category.art] = []
        posts[Category.nature] = []
        posts[Category.gaming] = []
        posts[Category.feelings] = []
        posts[Category.dating] = []
        posts[Category.work] = []
        posts[Category.food] = []
    }
    
    func listentoRealtimeDatabase() {
        initThing()
        guard let sportPath = sportPath else {
            return
        }
        sportPath
            .observe(.childAdded) { [weak self] snapshot, arg  in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                json["id"] = snapshot.key
                do {
                    let postData = try JSONSerialization.data(withJSONObject: json)
                    let post = try self.decoder.decode(Post.self, from: postData)
                    self.posts[Category.sports]?.append(post)
                } catch {
                    print("an error occurred", error)
                }
            }
        
        guard let naturePath = naturePath else {
            return
        }
        naturePath
            .observe(.childAdded) { [weak self] snapshot, arg  in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                json["id"] = snapshot.key
                do {
                    let postData = try JSONSerialization.data(withJSONObject: json)
                    let post = try self.decoder.decode(Post.self, from: postData)
                    self.posts[Category.nature]?.append(post)
                } catch {
                    print("an error occurred", error)
                }
            }
        
        guard let artPath = artPath else {
            return
        }
        artPath
            .observe(.childAdded) { [weak self] snapshot, arg  in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                json["id"] = snapshot.key
                do {
                    let postData = try JSONSerialization.data(withJSONObject: json)
                    let post = try self.decoder.decode(Post.self, from: postData)
                    self.posts[Category.art]?.append(post)
                } catch {
                    print("an error occurred", error)
                }
            }
        
        guard let datingPath = datingPath else {
            return
        }
        datingPath
            .observe(.childAdded) { [weak self] snapshot, arg  in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                json["id"] = snapshot.key
                do {
                    let postData = try JSONSerialization.data(withJSONObject: json)
                    let post = try self.decoder.decode(Post.self, from: postData)
                    self.posts[Category.dating]?.append(post)
                } catch {
                    print("an error occurred", error)
                }
            }
        guard let gamingPath = gamingPath else {
            return
        }
        gamingPath
            .observe(.childAdded) { [weak self] snapshot, arg  in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                json["id"] = snapshot.key
                do {
                    let postData = try JSONSerialization.data(withJSONObject: json)
                    let post = try self.decoder.decode(Post.self, from: postData)
                    self.posts[Category.gaming]?.append(post)
                } catch {
                    print("an error occurred", error)
                }
            }
        guard let foodPath = foodPath else {
            return
        }
        foodPath
            .observe(.childAdded) { [weak self] snapshot, arg  in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                json["id"] = snapshot.key
                do {
                    let postData = try JSONSerialization.data(withJSONObject: json)
                    let post = try self.decoder.decode(Post.self, from: postData)
                    self.posts[Category.food]?.append(post)
                } catch {
                    print("an error occurred", error)
                }
            }
        
        guard let feelingsPath = feelingsPath else {
            return
        }
        feelingsPath
            .observe(.childAdded) { [weak self] snapshot, arg  in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                json["id"] = snapshot.key
                do {
                    let postData = try JSONSerialization.data(withJSONObject: json)
                    let post = try self.decoder.decode(Post.self, from: postData)
                    self.posts[Category.feelings]?.append(post)
                } catch {
                    print("an error occurred", error)
                }
            }
        
        guard let workPath = workPath else {
            return
        }
        workPath
            .observe(.childAdded) { [weak self] snapshot, arg  in
                guard
                    let self = self,
                    var json = snapshot.value as? [String: Any]
                else {
                    return
                }
                json["id"] = snapshot.key
                do {
                    let postData = try JSONSerialization.data(withJSONObject: json)
                    let post = try self.decoder.decode(Post.self, from: postData)
                    self.posts[Category.work]?.append(post)
                } catch {
                    print("an error occurred", error)
                }
            }
        print("FUCK", posts)
    }
    
    func stopListening() {
        sportPath?.removeAllObservers()
        naturePath?.removeAllObservers()
        artPath?.removeAllObservers()
        datingPath?.removeAllObservers()
        gamingPath?.removeAllObservers()
        foodPath?.removeAllObservers()
        feelingsPath?.removeAllObservers()
        workPath?.removeAllObservers()
    }
}

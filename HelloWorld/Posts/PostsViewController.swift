//
//  PostsViewController.swift
//  HelloWorld
//
//  Created by Paula.Escribano on 2025-11-10.
//

import UIKit

class PostsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts: [Post] = []
    let dataSource = PostsDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = NSLocalizedString("network_call", comment: "")
        
        tableView.dataSource = self
        tableView.delegate = self
        
        fetchData()
    }
    
    func fetchData() {
        dataSource.fetchPosts { result in
            switch result {
            case .success(let posts):
                DispatchQueue.main.async {
                    self.posts = posts
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print("Error al cargar posts: \(error)")
            }
        }
    }
}

extension PostsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath)
        let post = posts[indexPath.row]
        cell.textLabel?.text = post.title
        cell.detailTextLabel?.text = "Post ID: \(post.id)"
        return cell
    }
}

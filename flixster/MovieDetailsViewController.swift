//
//  MovieDetailsViewController.swift
//  flixster
//
//  Created by Susanth Kakarla on 9/18/21.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {

    
    @IBOutlet weak var BackdropBackgroundView: UIImageView!
    @IBOutlet weak var BackdropTitle: UILabel!
    @IBOutlet weak var BackdropImageView: UIImageView!
    
    @IBOutlet weak var BackdropSynopsis: UILabel!
    
    
    var movie: [String:Any]!
    override func viewDidLoad() { 
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(movie["title"])
        
        BackdropTitle.text = movie["title"] as? String
        
        
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        BackdropImageView.af_setImage(withURL: posterUrl!)
    
        BackdropSynopsis.text = movie["overview"] as? String
        BackdropSynopsis.sizeToFit()
        
        
        
        let backDropImageUrl = "https://image.tmdb.org/t/p/w780"
        let backDropPath = movie["backdrop_path"] as! String
        let backDropUrl = URL(string: backDropImageUrl + backDropPath)
        
        BackdropBackgroundView.af_setImage(withURL: backDropUrl!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

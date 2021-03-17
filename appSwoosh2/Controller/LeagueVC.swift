//
//  LeagueVC.swift
//  appSwoosh2
//
//  Created by Mehmet Kavunoğlu on 8.03.2021.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    
    @IBOutlet weak var NextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
    }
    
    @IBAction func onWomensTabbed(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onMensTabbed(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onTabbedCoed(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        NextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }


        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based storyboard app, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

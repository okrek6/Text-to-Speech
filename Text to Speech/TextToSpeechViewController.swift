//
//  TextToSpeechViewController.swift
//  Text to Speech
//
//  Created by Brendan Krekeler on 2/4/19.
//  Copyright © 2019 Brendan Krekeler. All rights reserved.
//

import UIKit
import AVFoundation

class TextToSpeechViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var textForSpeech: UITextView!
    
    
    var speechSynthesizer = AVSpeechSynthesizer()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func speakText(_ sender: Any) {
        let speechUtterance = AVSpeechUtterance(string: textForSpeech.text)
        
        speechSynthesizer.speak(speechUtterance)
        
    }
    
}

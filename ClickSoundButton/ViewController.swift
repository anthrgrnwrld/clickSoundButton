//
//  ViewController.swift
//  ClickSoundButton
//
//  Created by Masaki Horimoto on 2015/10/15.
//  Copyright © 2015年 Masaki Horimoto. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressButton(sender: AnyObject) {
        print("\(__FUNCTION__) is called.")
    AudioServicesPlaySystemSoundWithoutVibration("Tink.caf")
        
    }
    
    /**
    バイブレーション無しでシステムサウンドを再生する。
    http://iphonedevwiki.net/index.php/AudioServices 参照
    
    :param: soundName:再生したいシステムサウンドのファイル名
    */
    func AudioServicesPlaySystemSoundWithoutVibration(soundName :String) {
        
        var soundIdRing:SystemSoundID = 0
        let soundUrl = NSURL(fileURLWithPath: "/System/Library/Audio/UISounds/\(soundName)")
        AudioServicesCreateSystemSoundID(soundUrl, &soundIdRing)
        AudioServicesPlaySystemSound(soundIdRing)
        
    }

}


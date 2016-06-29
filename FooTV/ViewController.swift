//
//  ViewController.swift
//  FooTV
//
//  Created by Jan GORMAN on 29/06/2016.
//  Copyright © 2016 Dailymotion. All rights reserved.
//

import UIKit
import FBSDKTVOSKit

class ViewController: UIViewController {
  
  private var facebookButton: FBSDKDeviceLoginButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    setupFacebookButton()
  }
  
  private func setupFacebookButton() {
    facebookButton = FBSDKDeviceLoginButton(frame: CGRect.zero)
    facebookButton.readPermissions = ["email", "public_profile"]
    facebookButton.delegate = self
    facebookButton.center = view.center
    view.addSubview(facebookButton)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

extension ViewController: FBSDKDeviceLoginButtonDelegate {
  
  func deviceLoginButtonDidLogIn(button: FBSDKDeviceLoginButton) {
    let token = FBSDKAccessToken.currentAccessToken().tokenString
    print(token)
  }
  
  func deviceLoginButtonDidCancel(button: FBSDKDeviceLoginButton) {
  }
  
  func deviceLoginButtonDidFail(button: FBSDKDeviceLoginButton, error: NSError) {
  }
  
  func deviceLoginButtonDidLogOut(button: FBSDKDeviceLoginButton) {
  }
  
}

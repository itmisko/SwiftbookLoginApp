//
//  UserInfoViewController.swift
//  LoginViewController
//
//  Created by 19333717 on 06.07.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var jobTitle: UILabel!
    @IBOutlet weak var aboutMe: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = user.person.fullName
        jobTitle.text = "DevOps"
        aboutMe.text = """
Меня зовут Сергей. Работаю DevOps-инженером в Сбере. Очень хочу
научиться программировать на языках Swift и Kotlin или Java. Надеюсь в будущем реализовать свою мечту и написать приложение.
"""
    }
}

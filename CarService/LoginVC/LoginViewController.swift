//
//  ViewController.swift
//  CarService
//
//  Created by Egor Efimenko on 06.04.2022.
//
import SnapKit
import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }

    func initialize() {
        view.backgroundColor = UIColor(red: 241/255, green: 238/255, blue: 228/255, alpha: 1)
        
        let label = UILabel()
        label.text = "🚙 Сервис Артема"
        label.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(150)
        }
        
        let infoLable = UILabel()
        infoLable.text = "Тут вы можете починить и модернизировать сердце вашего автомобиля,\n Поменять ее внешний вид,\n Купить запчастей"
        infoLable.numberOfLines = 0
        view.addSubview(infoLable)
        infoLable.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(50)
            make.top.equalTo(label).inset(100)
        }
        
        let loginInButton = UIButton(type: .system)
        loginInButton.backgroundColor = UIColor.blue
        loginInButton.setTitleColor(.white, for: .normal)
        loginInButton.layer.cornerRadius = 20
        loginInButton.setTitle("Сделать заказ", for: .normal)
        view.addSubview(loginInButton)
        loginInButton.snp.makeConstraints { make in
            make.top.equalTo(infoLable).inset(150)
            make.left.equalToSuperview().inset(20)
            make.height.equalTo(50)
            make.width.centerX.equalToSuperview().inset(120)
            
        }
        
        let statusButton = UIButton(type: .system)
        statusButton.backgroundColor = UIColor.blue
        statusButton.setTitleColor(.white, for: .normal)
        statusButton.layer.cornerRadius = 20
        statusButton.setTitle("Проверить статус", for: .normal)
        view.addSubview(statusButton)
        statusButton.snp.makeConstraints { make in
            make.top.equalTo(infoLable).inset(150)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(50)
            make.width.centerX.equalToSuperview().inset(120)
        }
        
        let infoCreatorText = UILabel()
        infoCreatorText.text = "Created by Egor E."
        infoCreatorText.font = UIFont.systemFont(ofSize: 10)
        infoCreatorText.textColor = UIColor.gray
        view.addSubview(infoCreatorText)
        infoCreatorText.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(10)
            make.bottom.equalToSuperview().inset(50)
        }
    }

}


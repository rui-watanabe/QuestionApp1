//
//  ViewController.swift
//  QuestionApp1
//
//  Created by watar on 2019/09/26.
//  Copyright © 2019 rui watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    var correctCount = 0
    var wrongCount = 0
    var maxScore = 0
    var questionNumber = 0
    
    let imagesList = ImagesList()
    
    //IBAcitionで検知した正答がどちらなのかを取得する変数
    var pickedAnswer = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        correctCount = 0
        wrongCount = 0
        questionNumber = 0
        
        imageView.image = UIImage(named: ImagesList.list[0].imageText)
    }
    
    
    @IBAction func answer(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1{
            
            pickedAnswer = true
            
            print("正解")
            correctCount = correctCount + 1
            
            
            
        }else if (sender as AnyObject).tag == 2{
            
            pickedAnswer = false
            
            
            
        }
        
        //回答があっているかチェック
        check()
        nextQuestions()
        
        
    }
    func check(){
        let correctAnswer = imagesList.list[questionNumber].answer
        if correctAnswer == pickedAnswer{
            
            print("正解")
        }else{
            print("間違い")
            wrongCount = wrongCount + 1
            
        }
        
    }
    
    func nextQuestions(){
        if questionNumber <= 9{
            questionNumber = questionNumber + 1
            imageView.image = UIImage(named: imagesList.list[questionNumber].imageText)
            
        }else{
            print("問題終了")
            
            performSegue(withIdentifier: "next", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "next"{
            let nextVC = segue.destination as! NextViewController
            
            nextVC.correctedCount = correctCount
            nextVC.wrongCount = wrongCount
            
        }
    }

}


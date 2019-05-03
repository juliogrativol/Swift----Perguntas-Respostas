//
//  ViewController.swift
//  Perguntas&Respostas
//
//  Created by Julio Cesar Grativol Thomaz on 02/05/19.
//  Copyright © 2019 Julio Cesar Grativol Thomaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var perguntaLabel: UILabel!
    @IBOutlet weak var respostaLabel: UILabel!
    
    let questions : [String] = [
        "Qual a disciplina de hoje?",
        "Qual filme vamos ver hoje?",
        "Que horas acaba a aula?"
    ]
    
    let respostas : [String] = [
        "Desenvolvimento e IOS",
        "Vingadores Ultimate",
        "22:30"
    ]
    
    var perguntaAtual : Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func proximaPergunta(_ sender: Any) {
        perguntaAtual += 1;
        
        if (perguntaAtual == questions.count){
            perguntaAtual = 0
        }
        
        let pergunta: String = questions[perguntaAtual]
        perguntaLabel.text = pergunta
        respostaLabel.text = "???"
    }
    
    
    @IBAction func mostrarResposta(_ sender: Any) {
        let resposta : String = respostas[perguntaAtual]
        respostaLabel.text = resposta
    }
}


//
//  ViewController.swift
//  FaixaEtária
//
//  Created by iOSLab on 20/04/24.
//

import UIKit

enum Ages: String{
    
    case PrimeiraInfancia = "Primeira Infância"
    case SegundaInfancia = "Segunda Infância"
    case PreAdolescencia = "Pré-adolescente"
    case Adolescencia =   "Adolescência"
    case PosAdolescencia =  "Pós - Adolescência"
    case Adulto =  "Adultidade"
    case MeiaIdade =  "Meia Idade"
    case TerceiraIdade =  "Terceira Idade"
    
    static func agetype (age: Int) -> Ages? {
        switch age {
        case 02...04:
            return .PrimeiraInfancia
        case 05...10:
            return .SegundaInfancia
        case 11...15:
            return .PreAdolescencia
        case 16...20:
            return .Adolescencia
        case 21...26:
            return .PosAdolescencia
        case 27...40:
            return .Adulto
        case 40...65:
            return .MeiaIdade
        default:
            return nil
        }
    }
        
    }



class ViewController: UIViewController {
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Pesquisa(_ sender: Any) {
        
        guard let idade = Int(number.text ?? ""),
              let userAge = Ages.agetype(age: idade) else {
            result.text = "Digite um Número"
            return
        }
   
        
        result.text = userAge.rawValue
        
    }
}

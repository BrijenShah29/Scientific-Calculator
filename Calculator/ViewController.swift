//
//  ViewController.swift
//  Calculator - This current program helps end-user to make calculation with some Adavanced functionalities.
//Program name : MAPD 714 iOS Development
//  Created by Brijen Shah on 2022-09-25.
//Studen Name : Brijen Jayeshbhai Shah
// Student Id : 301271637
//Student Name : Ajay Shrivastav
//Student id : 301284668

import Foundation
import UIKit
//https://github.com/BrijenShah29/Calculator.git

class ViewController: UIViewController
{
    var first = ""
    var second = ""
    var function = ""
    var result = 0.0
    var workings = ""
    var userinput = ""
    var randomDouble = 0.0
    var Pi = 3.14159265
    
    
    @IBOutlet weak var calcWorkingDisplay: UILabel!
    @IBOutlet weak var calResultDisplay: UILabel!
   
    @IBOutlet weak var horizontalStackview4: UIStackView!
    @IBOutlet weak var horizontalStackview5: UIStackView!
    
    @IBOutlet weak var resultView: UIView!
    
    @IBOutlet weak var horizontalStackView2: UIStackView!
    
    @IBOutlet weak var horizontalStackView3: UIStackView!
    @IBOutlet weak var horizontalStackView1: UIStackView!
    @IBOutlet weak var workingView: UIView!
    @IBOutlet weak var stackview: UIStackView!
    // Button Connections
    
    @IBOutlet weak var moduloButton: UIButton!
    @IBOutlet weak var acbutton: UIButton!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var plusMinusButton: UIButton!
    
    @IBOutlet weak var sevenButton: UIButton!
    
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    
    @IBOutlet weak var multiplyButton: UIButton!
    
    @IBOutlet weak var fourButton: UIButton!
    
    @IBOutlet weak var fiveButton: UIButton!
    
    @IBOutlet weak var sixButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var oneButton: UIButton!
    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    
    @IBOutlet weak var totalButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var pointButton: UIButton!
    
    
    @IBOutlet weak var plus_landscape: UIButton!
    @IBOutlet weak var total_landscape: UIButton!
    
    @IBOutlet weak var modulo_landscape: UIButton!
    @IBOutlet weak var plus_minus_landscape: UIButton!
    @IBOutlet weak var ac_landscape: UIButton!
    @IBOutlet weak var divide_landscape: UIButton!
    @IBOutlet weak var seven_landscape: UIButton!
    @IBOutlet weak var eight_landscape: UIButton!
    @IBOutlet weak var nine_landscape: UIButton!
    @IBOutlet weak var mutliply_landscape: UIButton!
    @IBOutlet weak var four_landscape: UIButton!
    @IBOutlet weak var five_landscape: UIButton!
    @IBOutlet weak var six_landscape: UIButton!
    @IBOutlet weak var minus_landscape: UIButton!
    @IBOutlet weak var one_landscape: UIButton!
    @IBOutlet weak var two_landscape: UIButton!
    @IBOutlet weak var three_landscape: UIButton!
    @IBOutlet weak var zero_landscape: UIButton!
    @IBOutlet weak var point_landscape: UIButton!
    
    @IBOutlet weak var tanh_landscape: UIButton!
    
    @IBOutlet weak var M_Landscape: UIButton!
    
    @IBOutlet weak var bracetOpen_landscape: UIButton!
    @IBOutlet weak var bracetClose_landscape: UIButton!
    @IBOutlet weak var mr_landscape: UIButton!
    @IBOutlet weak var Mminus_landscape: UIButton!
    @IBOutlet weak var Mplus_landscape: UIButton!
    @IBOutlet weak var pi_Landscape: UIButton!
    
    @IBOutlet weak var ranD_landscape: UIButton!
    
    @IBOutlet weak var Rad_landscape: UIButton!
    @IBOutlet weak var sinh_landscape: UIButton!
    @IBOutlet weak var e_Landscape: UIButton!
    @IBOutlet weak var tan_Landscape: UIButton!
    @IBOutlet weak var cos_Landscape: UIButton!
    @IBOutlet weak var cosh_landscape: UIButton!
    @IBOutlet weak var tanh_Landscape: UIButton!
    @IBOutlet weak var Tenx_landscape: UIButton!
    
    @IBOutlet weak var xY_landscape: UIButton!
    @IBOutlet weak var eX_landscape: UIButton!
    @IBOutlet weak var TwosqrtX_landscape: UIButton!
    @IBOutlet weak var ThreesqrtX_landscape: UIButton!
    @IBOutlet weak var ysqrtx_landscape: UIButton!
    @IBOutlet weak var ln_landscape: UIButton!
    @IBOutlet weak var xi_landscape: UIButton!
    @IBOutlet weak var sin_landscape: UIButton!
    @IBOutlet weak var Xtwo_landscape: UIButton!
    @IBOutlet weak var EE_landscape: UIButton!
    @IBOutlet weak var TwoND_landscape: UIButton!
    @IBOutlet weak var x3_landscape: UIButton!
    
    @IBOutlet weak var oneDivideX_landscape: UIButton!
    @IBOutlet weak var log10_landscape: UIButton!
    
    
    
    
    //hello
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        /*--------------------------------------
         
         double tap Gesture
        
        -------------------------------------------*/
        
        let doubletap = UITapGestureRecognizer(target: self, action: #selector(didDoubleTap(_:)))
            doubletap.numberOfTapsRequired = 2
            totalButton.addGestureRecognizer(doubletap)
            total_landscape.addGestureRecognizer(doubletap)
                                               
   
        // Do any additional setup after loading the view.
        calcWorkingDisplay.layer.cornerRadius = 20
       // calculatorWorking.layer.borderWidth = 2
        calResultDisplay.layer.cornerRadius = 20
       // calculatorResult.layer.borderWidth = 2
       // calculatorResult.layer.borderColor = UIColor.white.cgColor
       // calculatorWorking.layer.borderColor = UIColor.white.cgColor
        stackview.layer.borderWidth = 10
        stackview.layer.cornerRadius = 20
        stackview.layer.borderColor = UIColor.white.cgColor
        acbutton.layer.borderWidth = 10
        acbutton.layer.cornerRadius = 20
        acbutton.layer.borderColor = UIColor.white.cgColor
        backButton.layer.borderWidth = 10
        backButton.layer.cornerRadius = 20
        backButton.layer.borderColor = UIColor.white.cgColor
        
        moduloButton.layer.borderWidth = 10
        moduloButton.layer.cornerRadius = 20
        moduloButton.layer.borderColor = UIColor.white.cgColor
        plusMinusButton.layer.borderWidth = 10
        plusMinusButton.layer.cornerRadius = 20
        plusMinusButton.layer.borderColor = UIColor.white.cgColor
        divideButton.layer.borderWidth = 10
        divideButton.layer.cornerRadius = 20
        divideButton.layer.borderColor = UIColor.white.cgColor
        sevenButton.layer.borderWidth = 10
        sevenButton.layer.cornerRadius = 20
        sevenButton.layer.borderColor = UIColor.white.cgColor
        eightButton.layer.borderWidth = 10
        eightButton.layer.cornerRadius = 20
        eightButton.layer.borderColor = UIColor.white.cgColor
        nineButton.layer.borderWidth = 10
        nineButton.layer.cornerRadius = 20
        nineButton.layer.borderColor = UIColor.white.cgColor
        multiplyButton.layer.borderWidth = 10
       multiplyButton.layer.cornerRadius = 20
        multiplyButton.layer.borderColor = UIColor.white.cgColor
        fourButton.layer.borderWidth = 10
       fourButton.layer.cornerRadius = 20
        fourButton.layer.borderColor = UIColor.white.cgColor
        fiveButton.layer.borderWidth = 10
       fiveButton.layer.cornerRadius = 20
        fiveButton.layer.borderColor = UIColor.white.cgColor
        sixButton.layer.borderWidth = 10
        sixButton.layer.cornerRadius = 20
        sixButton.layer.borderColor = UIColor.white.cgColor
        minusButton.layer.borderWidth = 10
        minusButton.layer.cornerRadius = 20
         minusButton.layer.borderColor = UIColor.white.cgColor
        oneButton.layer.borderWidth = 10
       oneButton.layer.cornerRadius = 20
        oneButton.layer.borderColor = UIColor.white.cgColor
        twoButton.layer.borderWidth = 10
        twoButton.layer.cornerRadius = 20
        twoButton.layer.borderColor = UIColor.white.cgColor
        threeButton.layer.borderWidth = 10
        threeButton.layer.cornerRadius = 20
        threeButton.layer.borderColor = UIColor.white.cgColor
        plusButton.layer.cornerRadius = 20
        plusButton.layer.borderWidth = 10
        plusButton.layer.borderColor = UIColor.white.cgColor
        totalButton.layer.borderWidth = 10
       totalButton.layer.cornerRadius = 20
        totalButton.layer.borderColor = UIColor.white.cgColor
        pointButton.layer.borderWidth = 10
       pointButton.layer.cornerRadius = 20
        pointButton.layer.borderColor = UIColor.white.cgColor
        zeroButton.layer.borderWidth = 10
        zeroButton.layer.cornerRadius = 20
        zeroButton.layer.borderColor = UIColor.white.cgColor
        
    //******************************************
        // LandScape Buttons outline
        
        one_landscape.layer.borderWidth = 1
        one_landscape.layer.cornerRadius = 15
        one_landscape.layer.borderColor = UIColor.white.cgColor
        
        two_landscape.layer.borderWidth = 1
        two_landscape.layer.cornerRadius = 15
        two_landscape.layer.borderColor = UIColor.white.cgColor
    
        three_landscape.layer.borderWidth = 1
        three_landscape.layer.cornerRadius = 15
        three_landscape.layer.borderColor = UIColor.white.cgColor
        
        four_landscape.layer.borderWidth = 1
        four_landscape.layer.cornerRadius = 15
        four_landscape.layer.borderColor = UIColor.white.cgColor
        
        five_landscape.layer.borderWidth = 1
        five_landscape.layer.cornerRadius = 15
        five_landscape.layer.borderColor = UIColor.white.cgColor
        six_landscape.layer.borderWidth = 1
        six_landscape.layer.cornerRadius = 15
        six_landscape.layer.borderColor = UIColor.white.cgColor
        seven_landscape.layer.borderWidth = 1
        seven_landscape.layer.cornerRadius = 15
        seven_landscape.layer.borderColor = UIColor.white.cgColor
        eight_landscape.layer.borderWidth = 1
        eight_landscape.layer.cornerRadius = 15
        eight_landscape.layer.borderColor = UIColor.white.cgColor
        nine_landscape.layer.borderWidth = 1
        nine_landscape.layer.cornerRadius = 15
        nine_landscape.layer.borderColor = UIColor.white.cgColor
        zero_landscape.layer.borderWidth = 1
        zero_landscape.layer.cornerRadius = 15
        zero_landscape.layer.borderColor = UIColor.white.cgColor
        point_landscape.layer.borderWidth = 1
        point_landscape.layer.cornerRadius = 15
        point_landscape.layer.borderColor = UIColor.white.cgColor
        total_landscape.layer.borderWidth = 1
        total_landscape.layer.cornerRadius = 15
        total_landscape.layer.borderColor = UIColor.white.cgColor
        plus_landscape.layer.borderWidth = 1
        plus_landscape.layer.cornerRadius = 15
        plus_landscape.layer.borderColor = UIColor.white.cgColor
        minus_landscape.layer.borderWidth = 1
        minus_landscape.layer.cornerRadius = 15
        minus_landscape.layer.borderColor = UIColor.white.cgColor
        mutliply_landscape.layer.borderWidth = 1
        mutliply_landscape.layer.cornerRadius = 15
        mutliply_landscape.layer.borderColor = UIColor.white.cgColor
        
        divide_landscape.layer.borderWidth = 1
        divide_landscape.layer.cornerRadius = 15
        divide_landscape.layer.borderColor = UIColor.white.cgColor
        
        modulo_landscape.layer.borderWidth = 1
        modulo_landscape.layer.cornerRadius = 15
        modulo_landscape.layer.borderColor = UIColor.white.cgColor
        plus_minus_landscape.layer.borderWidth = 1
        plus_minus_landscape.layer.cornerRadius = 15
        plus_minus_landscape.layer.borderColor = UIColor.white.cgColor
        
        ac_landscape.layer.borderWidth = 1
        ac_landscape.layer.cornerRadius = 15
        ac_landscape.layer.borderColor = UIColor.white.cgColor
        
        mr_landscape.layer.borderWidth = 1
       mr_landscape.layer.cornerRadius = 15
        mr_landscape.layer.borderColor = UIColor.white.cgColor
        
        M_Landscape.layer.borderWidth = 1
       M_Landscape.layer.cornerRadius = 15
        M_Landscape.layer.borderColor = UIColor.white.cgColor
        
        Mplus_landscape.layer.borderWidth = 1
       Mplus_landscape.layer.cornerRadius = 15
        Mplus_landscape.layer.borderColor = UIColor.white.cgColor
        
        Mminus_landscape.layer.borderWidth = 1
       Mminus_landscape.layer.cornerRadius = 15
        Mminus_landscape.layer.borderColor = UIColor.white.cgColor
        
        bracetOpen_landscape.layer.borderWidth = 1
        bracetOpen_landscape.layer.cornerRadius = 15
        bracetOpen_landscape.layer.borderColor = UIColor.white.cgColor
        
        bracetClose_landscape.layer.borderWidth = 1
        bracetClose_landscape.layer.cornerRadius = 15
        bracetClose_landscape.layer.borderColor = UIColor.white.cgColor
        
        sinh_landscape.layer.borderWidth = 1
        sinh_landscape.layer.cornerRadius = 15
        sinh_landscape.layer.borderColor = UIColor.white.cgColor
        
         e_Landscape.layer.borderWidth = 1
         e_Landscape.layer.cornerRadius = 15
         e_Landscape.layer.borderColor = UIColor.white.cgColor
        
         tan_Landscape.layer.borderWidth = 1
         tan_Landscape.layer.cornerRadius = 15
         tan_Landscape.layer.borderColor = UIColor.white.cgColor
        
         cos_Landscape.layer.borderWidth = 1
         cos_Landscape.layer.cornerRadius = 15
         cos_Landscape.layer.borderColor = UIColor.white.cgColor
        
        cosh_landscape.layer.borderWidth = 1
        cosh_landscape.layer.cornerRadius = 15
        cosh_landscape.layer.borderColor = UIColor.white.cgColor
        
        tanh_Landscape.layer.borderWidth = 1
        tanh_Landscape.layer.cornerRadius = 15
        tanh_Landscape.layer.borderColor = UIColor.white.cgColor

        
        Tenx_landscape.layer.borderWidth = 1
        Tenx_landscape.layer.cornerRadius = 15
        Tenx_landscape.layer.borderColor = UIColor.white.cgColor
    

        Xtwo_landscape.layer.borderWidth = 1
        Xtwo_landscape.layer.cornerRadius = 15
        Xtwo_landscape.layer.borderColor = UIColor.white.cgColor
        

        EE_landscape.layer.borderWidth = 1
        EE_landscape.layer.cornerRadius = 15
        EE_landscape.layer.borderColor = UIColor.white.cgColor
        
        log10_landscape.layer.borderWidth = 1
        log10_landscape.layer.cornerRadius = 15
        log10_landscape.layer.borderColor = UIColor.white.cgColor
        
        xY_landscape.layer.borderWidth = 1
        xY_landscape.layer.cornerRadius = 15
        xY_landscape.layer.borderColor = UIColor.white.cgColor
       
        
        eX_landscape.layer.borderWidth = 1
        eX_landscape.layer.cornerRadius = 15
        eX_landscape.layer.borderColor = UIColor.white.cgColor
        
        TwosqrtX_landscape.layer.borderWidth = 1
        TwosqrtX_landscape.layer.cornerRadius = 15
        TwosqrtX_landscape.layer.borderColor = UIColor.white.cgColor
        
        ThreesqrtX_landscape.layer.borderWidth = 1
        ThreesqrtX_landscape.layer.cornerRadius = 15
        ThreesqrtX_landscape.layer.borderColor = UIColor.white.cgColor
        
        ysqrtx_landscape.layer.borderWidth = 1
        ysqrtx_landscape.layer.cornerRadius = 15
        ysqrtx_landscape.layer.borderColor = UIColor.white.cgColor
        
        
        ln_landscape.layer.borderWidth = 1
        ln_landscape.layer.cornerRadius = 15
        ln_landscape.layer.borderColor = UIColor.white.cgColor
        
        xi_landscape.layer.borderWidth = 1
        xi_landscape.layer.cornerRadius = 15
        xi_landscape.layer.borderColor = UIColor.white.cgColor
        
        sin_landscape.layer.borderWidth = 1
        sin_landscape.layer.cornerRadius = 15
        sin_landscape.layer.borderColor = UIColor.white.cgColor
        
        Xtwo_landscape.layer.borderWidth = 1
        Xtwo_landscape.layer.cornerRadius = 15
        Xtwo_landscape.layer.borderColor = UIColor.white.cgColor
        
        EE_landscape.layer.borderWidth = 1
        EE_landscape.layer.cornerRadius = 15
        EE_landscape.layer.borderColor = UIColor.white.cgColor
        
        TwoND_landscape.layer.borderWidth = 1
        TwoND_landscape.layer.cornerRadius = 15
        TwoND_landscape.layer.borderColor = UIColor.white.cgColor
        
        x3_landscape.layer.borderWidth = 1
        x3_landscape.layer.cornerRadius = 15
        x3_landscape.layer.borderColor = UIColor.white.cgColor
        
        
        pi_Landscape.layer.borderWidth = 1
        pi_Landscape.layer.cornerRadius = 15
        pi_Landscape.layer.borderColor = UIColor.white.cgColor
        
        ranD_landscape.layer.borderWidth = 1
        ranD_landscape.layer.cornerRadius = 15
        ranD_landscape.layer.borderColor = UIColor.white.cgColor
       
        Rad_landscape.layer.borderWidth = 1
        Rad_landscape.layer.cornerRadius = 15
        Rad_landscape.layer.borderColor = UIColor.white.cgColor
        
        oneDivideX_landscape.layer.borderWidth = 1
        oneDivideX_landscape.layer.cornerRadius = 15
        oneDivideX_landscape.layer.borderColor = UIColor.white.cgColor
        
        resultView.layer.borderWidth = 1
        resultView.layer.cornerRadius = 15
        resultView.layer.borderColor = UIColor.white.cgColor
        
        
        
        clearAll()
        
    }
    // implementing double tap gesture
    @objc private func didDoubleTap(_ gesture: UITapGestureRecognizer){
        calcWorkingDisplay.text=calResultDisplay.text
        workings = calcWorkingDisplay.text ?? " "
        calResultDisplay.text=" "
        
    }
    
    /*
     
     -------------------------------------------------------------
    setting up clear all function
    
    -----------------------------------------------------------------
     
     */
    
     func clearAll()
    {
        first = ""
        second = ""
        userinput = ""
        function = ""
        result = 0.0
        calcWorkingDisplay.text = " "
        workings = ""
        calResultDisplay.text="0"
    }
    
    
    

    
    
    
    /*
     
     -------------------------------------------------------------
    setting up Working Panel Display function
    
    -----------------------------------------------------------------
     
     */
    
    func workingPanel(value : String)
    {
        workings = workings + value;
        calcWorkingDisplay.text = workings;
        //first = workings
        
    }
    
    /*
     -------------------------------------------------------------
   functions for calculation of Sin
    
    -----------------------------------------------------------------
     
     */
    
    func sine( SNum1: Double) -> Double {
        // Convert degrees into radian
        let radian1 = SNum1 * (Double.pi / 180)
        let res1 = Foundation.sin(radian1)
        return Double(res1)
    }
    
    
    /*
     -------------------------------------------------------------
     functions for calculation of Cos
    
    -----------------------------------------------------------------
     
     */
    
    
   func cosine(Snum1: Double) -> Double {
       let radian1 = Snum1 * (Double.pi / 180)
       let res1 = Foundation.cos(radian1)
       return Double(res1)
    }
    
    
    
    /*
     -------------------------------------------------------------
     functions for calculation of Tan
    
    -----------------------------------------------------------------
     
     */
    
    
    
    func tanf(Snum1: Double) -> Double {
        let radian1 = Snum1 * (Double.pi / 180)
        let res1 = Foundation.tan(radian1)
        return Double(res1)
     }
    
    
    /*
     -------------------------------------------------------------
     functions for calculation of Tan
    
    -----------------------------------------------------------------
     
     */
    
    func sqroot( Sqof: Double) -> Double {
        // Convert degrees into radian
        var res1 = Foundation.sqrt(Sqof)
        return Double(res1)
    }
    
    /*
     
     
     
     
     
     -------------------------------------------------------------
    setting up Calculation function
    
    -----------------------------------------------------------------
     
     */
    
    func calculation()
    {
        second = userinput
        //first = String(result)
        var firstInput = 0.0
        var secondInput = 0.0
        //firstInput = Double(first)!
       // secondInput = Double(second)!
        if(function == "+")
        {
            firstInput = Double(first) ?? 0.0
            secondInput = Double(second)!
            
            result = firstInput + secondInput
           calResultDisplay.text = String(format: "%.7g",result)
            userinput = String(format: "%.7g",result)
         
            //workings = String(result)
            //first = String(result)
            
        }
        else if(function == "-")
        {
            firstInput = Double(first) ?? 0.0

            secondInput = Double(second)!
            
            result = firstInput - secondInput
           calResultDisplay.text = String(format: "%.7g",result)
            userinput = String(format: "%.7g",result)
       
            //workings = String(result)
            //first = String(result)
        }
        else if (function == "*")
        {
            firstInput = Double(first) ?? 1

            secondInput = Double(second)!
            
            result = firstInput * secondInput
            calResultDisplay.text = String(format: "%.7g",result)
            userinput = String(format: "%.7g",result)
            //workings = String(result)
            //first = String(result)
        }
        else if (function == "/")
        {
            firstInput = Double(first) ?? 1
            secondInput = Double(second)!
            
            result = firstInput / secondInput
            calResultDisplay.text = String(format: "%.7g",result)
            userinput = String(format: "%.7g",result)
            //workings = String(result)
            //first = String(result)
        }
        
       else if(function == "%")
        {
           firstInput = Double(first) ?? result
          // secondInput = Double(second)!
           
           //second = String(0.0)
           result = firstInput * 0.01
          calResultDisplay.text = String(format: "%.7g",result)
           userinput = String(format: "%.7g",result)
       }
        
        else
        {
            calResultDisplay.text = userinput
        }
        
    }
    
    
    
  
    /*
     
     --------------------------------------------------------------------------------
    setting up Random Number generator and random number calculation  function
    
    ----------------------------------------------------------------------------------
     
     */
    
    @IBAction func Rand(_ sender: Any) {
        
        if (userinput == "" ) {
            randomDouble = Double.random(in: 1...10)
            userinput += String(format: "%.7g",randomDouble)
            calResultDisplay.text!=userinput
            workingPanel(value : "R")
                
        }
        else if(userinput=="1")
        {
            calcWorkingDisplay.text = ""
            randomDouble = Double.random(in: 0...1)
            userinput += String(0)
            userinput = ""
            userinput += String(format: "%.7g",randomDouble)
            calResultDisplay.text!=userinput
            workingPanel(value : "R")
            
        }
        else if(!userinput.isEmpty)
        {
            calcWorkingDisplay.text = ""
            randomDouble = round(Double.random(in: 0...(Double(userinput)!)))
            userinput = ""
            userinput += String(randomDouble)
            
            calResultDisplay.text!=userinput
            workingPanel(value : "R")
        }
        else
        {
            userinput += String(0.0)
        }
    }
    
    /*
     
     -------------------------------------------------------------
    setting up Pi Calculation function
    
    -----------------------------------------------------------------
     
     */
    
    
    @IBAction func Pi(_ sender: Any) {
        
        if (userinput == "") {
            calcWorkingDisplay.text = ""
            userinput += String(Pi)
            calResultDisplay.text!=userinput
            workingPanel(value : "Pi")
                
        }
        
        else if(!userinput.isEmpty)
        {
            var Reusable = 0.0
            calcWorkingDisplay.text = ""
            Reusable = Pi*Double(userinput)!
            userinput = ""
            userinput += String(format: "%.7g",Reusable)
            calResultDisplay.text!=userinput
            workingPanel(value : "Pi")
        }
        else
        {
            userinput += String("ChocoPie, ApplePie, PinapplePie")
        }
        
        
    }
    
    
    /*
     
     -------------------------------------------------------------
    setting up x^2 Calculation function
    
    -----------------------------------------------------------------
     
     */
    
    
    
    
    @IBAction func xRoot2(_ sender: Any) {
        
        if(!userinput.isEmpty)
        {
            var Reusable = 0.0
            calcWorkingDisplay.text = ""
            Reusable = Double(userinput)! * Double(userinput)!
            userinput = ""
            userinput += String(format: "%.7g",Reusable)
            calResultDisplay.text!=userinput
            workingPanel(value : "^2")
        }
            else{
                var Reusable = 0.0
                userinput += String(format: "%.7g",Reusable)
                workingPanel(value : "0")
        }
    
}
    
    /*
     
     -------------------------------------------------------------
    setting up x^3 Calculation function
    
    -----------------------------------------------------------------
     
     */
    
    @IBAction func xRoot3(_ sender: Any) {
        if(!userinput.isEmpty)
        {
            var Reusable = 0.0
            calcWorkingDisplay.text = ""
            Reusable = Double(userinput)! * Double(userinput)! * Double(userinput)!
            userinput = ""
            userinput += String(format: "%.7g",Reusable)
            calResultDisplay.text!=userinput
            workingPanel(value : "^3")
        }
            else{
                var Reusable = 0.0
                userinput += String(format: "%.7g",Reusable)
                workingPanel(value : "0")
        }
    
}

    /*
     
     Cos Button Sin function call
     
     */
    
    @IBAction func sin(_ sender: Any) {
        
    
        if(!userinput.isEmpty)
        {
            var Reusable = 0.0
            calcWorkingDisplay.text = ""
            Reusable = sine(SNum1: Double(userinput)!)
            userinput = ""
            userinput += String(format: "%.7g",Reusable)
            calResultDisplay.text!=userinput
            workingPanel(value : ".Sin")
        }
            else{
                let Reusable = 0.0
                userinput += String(format: "%.7g",Reusable)
                workingPanel(value : "0")
        }
        
    }
    
    /*
     
     Cos Button cos function call
     
     */
    
    
    @IBAction func cos(_ sender: Any) {
        
        if(!userinput.isEmpty)
        {
            var Reusable = 0.0
            calcWorkingDisplay.text = ""
            Reusable = cosine(Snum1: Double(userinput)!)
            userinput = ""
            userinput += String(format: "%.7g",Reusable)
            calResultDisplay.text!=userinput
            workingPanel(value : ".Cos")
        }
            else{
                let Reusable = 0.0
                userinput += String(format: "%.7g",Reusable)
                workingPanel(value : "0")
        }
        
        
    }
    
    
    
    
    /*
     
     Tan Button Tan function call
     
     */
    
    
    
    @IBAction func tan(_ sender: Any) {
        
        if(!userinput.isEmpty)
        {
            var Reusable = 0.0
            calcWorkingDisplay.text = ""
            Reusable = tanf(Snum1: Double(userinput)!)
            userinput = ""
            userinput += String(format: "%.7g",Reusable)
            calResultDisplay.text!=userinput
            workingPanel(value : ".Tan")
        }
            else{
                let Reusable = 0.0
                userinput += String(format: "%.7g",Reusable)
                workingPanel(value : "0")
        }
        
    }
    
    
    /*
     
     Sqroot Button for SQroot function call
     
     */
    
    
    @IBAction func sqroot(_ sender: Any) {
        
        
        if(!userinput.isEmpty)
        {
            var Reusable = 0.0
            calcWorkingDisplay.text = ""
            Reusable = sqroot(Sqof:  Double(userinput)!)
            userinput = ""
            userinput += String(format: "%.7g",Reusable)
            calResultDisplay.text!=userinput
            workingPanel(value : "sqrt")
        }
            else{
                let Reusable = 0.0
                userinput += String(format: "%.7g",Reusable)
                workingPanel(value : "0")
        }
        
    }
    
    /*
    
     -------------------------------------------------------------
    Calling of various Buttons and functions usage for calculation
    
    -----------------------------------------------------------------
     
     */
    
    @IBAction func calcAC(_ sender: Any) {
        
        clearAll()
        
        
    }
    
    @IBAction func calcBack(_ sender: Any) {
        
        if(!workings.isEmpty)               // adding back button functionality
        {
            workings.removeLast()
            userinput.removeLast()
            calcWorkingDisplay.text = workings
        }
        
        
        
    }
    
    @IBAction func plusMinus(_ sender: Any) {
        
        if(!userinput.starts(with:"-"))          // setting up +/- button
        {
            let minusValue = "-" + userinput
            userinput = minusValue
                workings.insert("-", at: String.Index(encodedOffset: 0))
            //calcWorkingDisplay = "-"
            calResultDisplay.text!=userinput


            
        }
        else{
            userinput.removeFirst()
            workings.removeFirst()
            calResultDisplay.text!=userinput
            
        }
            
       
       
       
    //numberString.insert("-", at: numberString.startIndex)
       // let minusValue = "-"+workings
       // workings = minusValue
       // calculatorWorking.text = minusValue
       // workings = minusValue
        
       /* if(!calculatorWorking.text[0]=="-")
        {
            calculatorWorking.text=workings
        }
        */
        
    }
    
    @IBAction func calcModule(_ sender: Any) {
        
        calculation()
        function = "%"
        first = userinput
        userinput = ""
        workingPanel(value : "%")
        
        
    }
    
    @IBAction func calcDevision(_ sender: Any)
    {
            calculation()
            function = "/"
            first = userinput
            userinput = ""
            workingPanel(value : "/")

    
            
        
    }
    
    @IBAction func calcMultiply(_ sender: Any)
    {
        calculation()
        function = "*"
        first = userinput
        userinput = ""
        workingPanel(value : "*")
        
    }
    
    @IBAction func calcMinus(_ sender: Any)
    {
            calculation()
            function = "-"
               first = userinput
               userinput = ""
               workingPanel(value : "-")
        
        
    }
    
    
    @IBAction func calcPlus(_ sender: Any)
    {
            calculation()
            function = "+"
            first = userinput
            userinput = ""
            workingPanel(value : "+");
        
    }
    
    
    @IBAction func calcTotal(_ sender: Any) {
        
        calculation()
        first = ""
        function=""
        
        
        /*
         second = userinput
         //first = String(result)
         var firstInput = 0.0
         var secondInput = 0.0
         //firstInput = Double(first)!
         // secondInput = Double(second)!
         if(function == "+")
         {
         firstInput = Double(first)!
         secondInput = Double(second)!
         
         result = firstInput + secondInput
         calResultDisplay.text = String(result)
         userinput = String(result)
         //workings = String(result)
         //first = String(result)
         
         }
         else if(function == "-")
         {
         firstInput = Double(first)!
         secondInput = Double(second)!
         
         result = firstInput - secondInput
         calResultDisplay.text = String(result)
         userinput = String(result)
         //workings = String(result)
         //first = String(result)
         }
         else if (function == "*")
         {
         firstInput = Double(first)!
         secondInput = Double(second)!
         
         result = firstInput * secondInput
         calResultDisplay.text = String(result)
         userinput = String(result)
         //workings = String(result)
         //first = String(result)
         }
         else if (function == "/")
         {
         firstInput = Double(first)!
         secondInput = Double(second)!
         
         result = firstInput / secondInput
         calResultDisplay.text = String(result)
         userinput = String(result)
         //workings = String(result)
         //first = String(result)
         }
         
         else if(function == "%")
         {
         firstInput = Double(first)!
         // secondInput = Double(second)!
         
         //second = String(0.0)
         result = firstInput * 0.01
         calResultDisplay.text = String(result)
         userinput = String(result)
         }
         
         else
         {
         calResultDisplay.text = "error"
         }
         
         */
    }
  
    @IBAction func calcPoint(_ sender: Any) {
        
        calcWorkingDisplay.text = ""
        userinput += "."
        calResultDisplay.text! = userinput
        
        workingPanel(value : ".")
        
        
    }
    
    @IBAction func calcZero(_ sender: Any) {
        userinput += "0"
        calResultDisplay.text!=userinput
        workingPanel(value : "0")
        
        
    }
    
    
    @IBAction func calcOne(_ sender: Any)
    {
        calcWorkingDisplay.text = ""
        userinput += "1"
        calResultDisplay.text!=userinput
        workingPanel(value : "1")
        
    }
    @IBAction func calcTwo(_ sender: Any)
    {
        
        calcWorkingDisplay.text = ""
        userinput += "2"
        calResultDisplay.text!=userinput
        workingPanel(value : "2")
        
    }
    
    @IBAction func calcThree(_ sender: Any)
    {
       
        calcWorkingDisplay.text = ""
        userinput += "3"
        calResultDisplay.text!=userinput
        workingPanel(value : "3")
    }
    
    
    @IBAction func calcFour(_ sender: Any)
    {
       
        calcWorkingDisplay.text = ""
        userinput += "4"
        calResultDisplay.text!=userinput
        workingPanel(value : "4")
    }
    
    @IBAction func calcFive(_ sender: Any)
    {
       
        calcWorkingDisplay.text = ""
        userinput += "5"
        calResultDisplay.text!=userinput
        workingPanel(value : "5")
        
    }
    
    @IBAction func calcSix(_ sender: Any)
    {
        
        calcWorkingDisplay.text = ""
        userinput += "6"
        calResultDisplay.text!=userinput
        workingPanel(value : "6")
    }
    
    @IBAction func calcSeven(_ sender: Any)
    {
       
        calcWorkingDisplay.text = ""
        userinput += "7"
        calResultDisplay.text!=userinput
        workingPanel(value : "7")
    }
    
    @IBAction func calcEight(_ sender: Any) {
        
        calcWorkingDisplay.text = ""
        userinput += "8"
        calResultDisplay.text!=userinput
        workingPanel(value : "8")
        
    }
    
   
    @IBAction func calcNine(_ sender: Any) {
        
        calcWorkingDisplay.text = ""
        userinput += "9"
        //calcWorkingDisplay.text! = userinput
        calResultDisplay.text!=userinput
        workingPanel(value : "9")
    }
    
   
}

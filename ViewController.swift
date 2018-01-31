//
//  ViewController.swift
//  Davis Drives
//
//  Created by Harjot Bhullar on 9/27/17.
//  Copyright © 2017 Harjot Bhullar and Navjot Singh. All rights reserved.
//

import UIKit
import MapKit


class SecondViewController: UIViewController, UITextFieldDelegate {
    
    var data = [Station]()
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UIButton!
    @IBOutlet weak var labelFive: UIButton!
    @IBOutlet weak var labelSix: UILabel!
    @IBOutlet weak var labelSeven: UIButton!
    @IBOutlet weak var labelEight: UIButton!
    @IBOutlet weak var labelNine: UILabel!
    @IBOutlet weak var labelTen: UIButton!
    @IBOutlet weak var labelEleven: UIButton!
    @IBOutlet weak var labelTwelve: UILabel!
    @IBOutlet weak var labelThirteen: UIButton!
    @IBOutlet weak var labelFourteen: UIButton!
    
    @IBOutlet weak var TF: UITextField!
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var price2: UILabel!
    
    @IBOutlet weak var price3: UILabel!
    
    @IBOutlet weak var price4: UILabel!
    
    @IBAction func shellDirection(_ sender: Any) {
        //Defining destination
        let latitude:CLLocationDegrees = 38.560317
        let longitude:CLLocationDegrees = -121.758033
        
        let regionDistance:CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Shell"
        mapItem.openInMaps(launchOptions: options)
    }
    
    
    @IBAction func MobilDirection(_ sender: Any) {
        let latitude:CLLocationDegrees = 38.677764
        let longitude:CLLocationDegrees = -121.783747
        
        let regionDistance:CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Mobil"
        mapItem.openInMaps(launchOptions: options)
    }
    
    @IBAction func ChevronDirection(_ sender: Any) {
        let latitude:CLLocationDegrees = 38.560374
        let longitude:CLLocationDegrees = -121.759013
        
        let regionDistance:CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Chevron"
        mapItem.openInMaps(launchOptions: options)
    }
    
    
    
    @IBAction func ArcoDirection(_ sender: Any) {
        //Defining destination
        let latitude:CLLocationDegrees = 38.546689
        let longitude:CLLocationDegrees = -121.759195
        
        let regionDistance:CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Arco"
        mapItem.openInMaps(launchOptions: options)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelOne.layer.borderWidth = 2
        labelOne.layer.borderColor = UIColor.black.cgColor
        
        labelTwo.layer.borderWidth = 2
        labelTwo.layer.borderColor = UIColor.black.cgColor
        
        price.layer.borderWidth = 3
        price.layer.borderColor = UIColor.black.cgColor
        
        price2.layer.borderWidth = 3
        price2.layer.borderColor = UIColor.black.cgColor
        
        price3.layer.borderWidth = 3
        price3.layer.borderColor = UIColor.black.cgColor
        
        price4.layer.borderWidth = 3
        price4.layer.borderColor = UIColor.black.cgColor
        
        labelThree.layer.borderWidth = 3
        labelThree.layer.borderColor = UIColor.black.cgColor
        
        labelFour.layer.borderWidth = 3
        labelFour.layer.borderColor = UIColor.black.cgColor
        
        labelFive.layer.borderWidth = 3
        labelFive.layer.borderColor = UIColor.black.cgColor
        
        labelSix.layer.borderWidth = 3
        labelSix.layer.borderColor = UIColor.black.cgColor
        
        labelSeven.layer.borderWidth = 3
        labelSeven.layer.borderColor = UIColor.black.cgColor
        
        labelEight.layer.borderWidth = 3
        labelEight.layer.borderColor = UIColor.black.cgColor
        
        labelNine.layer.borderWidth = 3
        labelNine.layer.borderColor = UIColor.black.cgColor
        
        labelTen.layer.borderWidth = 3
        labelTen.layer.borderColor = UIColor.black.cgColor
        
        labelEleven.layer.borderWidth = 3
        labelEleven.layer.borderColor = UIColor.black.cgColor
        
        labelTwelve.layer.borderWidth = 3
        labelTwelve.layer.borderColor = UIColor.black.cgColor
        
        labelThirteen.layer.borderWidth = 3
        labelThirteen.layer.borderColor = UIColor.black.cgColor
        
        labelFourteen.layer.borderWidth = 3
        labelFourteen.layer.borderColor = UIColor.black.cgColor
        
        
        fetchData()
        
        
        self.TF.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
   // override func didReceiveMemoryWarning() {
     //   super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    //}
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //let allowedCharacters = CharacterSet.decimalDigits
        //let characterSet = CharacterSet(charactersIn: string)
        //return allowedCharacters.isSuperset(of: characterSet)
        let inverseSet = NSCharacterSet(charactersIn:"0123456789").inverted
        
        let components = string.components(separatedBy: inverseSet)
        
        let filtered = components.joined(separator: "")
        
        if filtered == string { return true }
        else { if string == "."{
            let countdots = textField.text!.components(separatedBy:".").count - 1
            if countdots == 0 { return true }
            else{
                if countdots > 0 && string == "." { return false }
                else { return true }
            }
        }
        else{ return false }
        }
    }
    
    
    @IBAction func update(_ sender: Any) {
        if (TF.text != ""){
            
            price.text = "$" + TF.text!
            
            
            
            let myStation = Station(context: context)
            
            myStation.name = "station1"
            myStation.cost = price.text
            
            appDelegate.saveContext()

            
        }
    }
    
    @IBAction func update2(_ sender: Any) {
        if (TF.text != ""){
            price2.text = "$" + TF.text!

            let myStation2 = Station(context: context)
            
            myStation2.name = "station2"
            myStation2.cost = price2.text
            
            appDelegate.saveContext()

        }
        
    }
    
    @IBAction func update3(_ sender: Any) {
        if (TF.text != ""){
            price3.text = "$" + TF.text!
        
            let myStation3 = Station(context: context)
            
            myStation3.name = "station3"
            myStation3.cost = price3.text
            
            appDelegate.saveContext()

        }
        
    }
    
    @IBAction func update4(_ sender: Any) {
        if (TF.text != ""){
            price4.text = "$" + TF.text!
            
            let myStation4 = Station(context: context)
            
            myStation4.name = "station4"
            myStation4.cost = price4.text
            
            appDelegate.saveContext()

        }
        
    }
    func insertData(){
        let myStation = Station(context: context)
        
        myStation.name = "station1"
        myStation.cost = price.text
        
        appDelegate.saveContext()
        
        
        
    }
    func fetchData(){
        do {
            data = try context.fetch(Station.fetchRequest())
            for x in data{
                if (x.name == "station1"){
                    price.text = x.cost
                }
                else if(x.name == "station2"){
                    price2.text = x.cost
                }
                else if (x.name == "station3"){
                    price3.text = x.cost
                }
                else if (x.name == "station4"){
                    price4.text = x.cost
                }
            }
        }
        catch{
            //handle error
            price.text = "empty"
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}


//
//  piechart.swift
//  createleftmenubycode
//
//  Created by HaiPhan on 5/18/19.
//  Copyright © 2019 HaiPhan. All rights reserved.
//

import UIKit
import Charts

class piechart: UIViewController {

    @IBOutlet weak var piechart: PieChartView!
    var mangtext: [String] = ["A","B", "C"]
    var mangint: [Int] = [2,4,6]
    override func viewDidLoad() {
        super.viewDidLoad()
        piechart.noDataText = "hihi"
        setpiechart()
    }
    func setpiechart(){
        var mangdataentry: [PieChartDataEntry] = [PieChartDataEntry]()
        for i in 0...mangtext.count - 1 {
            let data: PieChartDataEntry = PieChartDataEntry(value: Double(mangint[i]), label: mangtext[i])
            mangdataentry.append(data)
        }
        let mangcolor: [UIColor] = [#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1),#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)]
        let piedataset: PieChartDataSet = PieChartDataSet(entries: mangdataentry, label: "hihi")
        piedataset.colors = mangcolor
        let piechartdata: PieChartData = PieChartData(dataSet: piedataset)
        piechart.data = piechartdata
    }


}

//
//  linechart.swift
//  createleftmenubycode
//
//  Created by HaiPhan on 5/18/19.
//  Copyright © 2019 HaiPhan. All rights reserved.
//

import UIKit
import Charts

class linechart: UIViewController {

    @IBOutlet weak var linechart: LineChartView!
    var mangtext: [String] = []
    var mangint: [Int] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        linechart.noDataText = "hihi"
        mangint = [2,4]
        mangtext = ["A", "B"]
        setuplinechart()
    }
    func setuplinechart(){
        var manglienchat: [BarChartDataEntry] = [BarChartDataEntry]()
        for i in 0...mangtext.count - 1 {
            let dataentry: BarChartDataEntry = BarChartDataEntry(x: Double(i), yValues: [Double(mangint[i])])
            manglienchat.append(dataentry)
        }
        let linechartdataset : LineChartDataSet = LineChartDataSet(entries: manglienchat, label: "Lượng mưa")
        let data: LineChartData = LineChartData(dataSet: linechartdataset)
        linechart.xAxis.valueFormatter = IndexAxisValueFormatter(values: mangtext)
        linechart.xAxis.granularity = 1
        linechart.data = data
    }


}

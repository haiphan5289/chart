//
//  barchart.swift
//  createleftmenubycode
//
//  Created by HaiPhan on 5/18/19.
//  Copyright © 2019 HaiPhan. All rights reserved.
//

import UIKit
import Charts

class barchart: UIViewController {


    @IBOutlet weak var chart: BarChartView!
    var mangtext: [String] = []
    var mangint: [Int] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        chart.noDataText = "hihi"
        mangtext = ["A", "B"]
        mangint = [2,4]
        setupcharts(name: mangtext, value: mangint)
    }
    func setupcharts(name: [String], value: [Int]){

        var mangchartdata: [BarChartDataEntry] = [BarChartDataEntry]()
        for i in 0...name.count - 1 {
            let dataset: BarChartDataEntry = BarChartDataEntry(x: Double(i), yValues: [Double(value[i])])
            mangchartdata.append(dataset)
        }
        let chartdataset: BarChartDataSet = BarChartDataSet(entries: mangchartdata, label: "Lượng mưa")
        chartdataset.setColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        let data: BarChartData = BarChartData(dataSet: chartdataset)
        data.setValueTextColor(#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1))
        chart.xAxis.valueFormatter = IndexAxisValueFormatter(values: mangtext)
        chart.xAxis.granularity = 1
        chart.data = data
        chart.backgroundColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        chart.animate(xAxisDuration: 1, easingOption: .easeInCirc)
    }
//    func setChart(dataPoints: [String], values: [Float])
//    {
//        barChartView.noDataText = "You need to provide data for the chart."
//
//        for i in 1..<values.count
//        {
//            let dataEntry = BarChartDataEntry(x: Double(i), yValues: [Double(values[i])])
//            dataEntries.append(dataEntry)
//        }
//
//        let chartDataSet:BarChartDataSet!
//
//        let chartDataSet = BarChartDataSet(values: dataEntries, label: "BarChart Data")
//        let chartData = BarChartData(dataSet: chartDataSet)
//        barChartView.data = chartData
//        barChartView.xAxis.valueFormatter = IndexAxisValueFormatter(values: dataPoints)
//        barChartView.xAxis.granularityEnabled = true
//        barChartView.xAxis.drawGridLinesEnabled = false
//        barChartView.xAxis.labelPosition = .bottom
//        barChartView.xAxis.labelCount = 30
//        barChartView.xAxis.granularity = 2
//        barChartView.leftAxis.enabled = true
//        //barChartView.leftAxis.labelPosition = .outsideChart
//        //barChartView.leftAxis.decimals = 0
//        let minn = Double(values.min()!) - 0.1
//        barChartView.leftAxis.axisMinimum = Double(values.min()! - 0.1)
//        //barChartView.leftAxis.granularityEnabled = true
//        //barChartView.leftAxis.granularity = 1.0
//        //barChartView.leftAxis.labelCount = 5
//        barChartView.leftAxis.axisMaximum = Double(values.max()! + 0.05)
//        barChartView.data?.setDrawValues(false)
//        barChartView.pinchZoomEnabled = true
//        barChartView.scaleYEnabled = true
//        barChartView.scaleXEnabled = true
//        barChartView.highlighter = nil
//        barChartView.doubleTapToZoomEnabled = true
//        barChartView.chartDescription?.text = ""
//        barChartView.rightAxis.enabled = false
//
//
//        barChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .easeInOutQuart)
//        chartDataSet.colors = [UIColor(red: 0/255, green: 76/255, blue: 153/255, alpha: 1)]
    
//    }


}

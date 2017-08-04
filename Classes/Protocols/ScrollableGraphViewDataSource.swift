
import UIKit

public protocol ScrollableGraphViewDataSource {
    func value(forPlot plot: Plot, atIndex pointIndex: Int) -> Double
    func label(atIndex pointIndex: Int) -> String
    func numberOfPoints() -> Int // This now forces the same number of points in each plot.
    func topLabel(forPlot plot: Plot) -> UILabel? // Label for show value on the top of data point, return nil will use default style

    func topLabelText(forPlot plot: Plot, atIndex pointIndex: Int) -> String? // text for top label
    func topLabelAttributedText(forPlot plot: Plot, atIndex pointIndex: Int) -> NSAttributedString? // attributedString for top label
}

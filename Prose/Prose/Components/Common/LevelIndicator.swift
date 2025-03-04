//
//  LevelIndicator.swift
//  Prose
//
//  Created by Valerian Saliou on 12/12/21.
//

import Cocoa
import SwiftUI

struct LevelIndicator: View {
    
    private let minimumValue, maximumValue: Double
    private let warningValue, criticalValue: Double
    private let tickMarkFactor: Double
    private let currentValue: Double
    
    internal init(
        currentValue: Double,
        minimumValue: Double = 0.0,
        maximumValue: Double = 1.0,
        warningValue: Double = 0.5,
        criticalValue: Double = 0.75,
        tickMarkFactor: Double = 6.0
    ) {
        self.minimumValue = minimumValue
        self.maximumValue = maximumValue
        self.warningValue = warningValue
        self.criticalValue = criticalValue
        self.tickMarkFactor = tickMarkFactor
        self.currentValue = currentValue
    }
    
    var body: some View {
        let indicator = NSLevelIndicator()
        
        // Configure bounds
        indicator.minValue = minimumValue * tickMarkFactor
        indicator.maxValue = maximumValue * tickMarkFactor
        indicator.warningValue = warningValue * tickMarkFactor
        indicator.criticalValue = criticalValue * tickMarkFactor
        
        // Apply value
        indicator.doubleValue = currentValue * tickMarkFactor
        
        return ViewWrap(indicator)
    }
    
}

struct LevelIndicator_Previews: PreviewProvider {
    
    private struct Preview: View {
        
        var body: some View {
            VStack {
                ForEach([-2, 0, 0.2, 0.4, 0.6, 0.8, 1, 2], id: \.self) { value in
                    LevelIndicator(
                        currentValue: value
                    )
                }
            }
            .padding()
        }
        
    }
    
    static var previews: some View {
        Preview()
            .preferredColorScheme(.light)
            .previewDisplayName("Light")
        
        Preview()
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark")
    }
    
}

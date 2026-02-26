//
//  SegmentioCustomCellWithLabel.swift
//  Segmentio
//
//  Created by Shivam Maggu on 11/11/24.
//

import UIKit

final class SegmentioCustomCellWithLabel: SegmentioCell {
    
    override func setupConstraintsForSubviews() {
        super.setupCustomConstraintsForSubviews()
        
        guard let containerView = containerView else {
            return
        }
        
        let views = ["containerView": containerView]
        
        // main constraints
        
        // custom constraints
        
        topConstraint = NSLayoutConstraint(
            item: containerView,
            attribute: .top,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .top,
            multiplier: 1,
            constant: 0
        )
        topConstraint?.isActive = true
        
        bottomConstraint = NSLayoutConstraint(
            item: contentView,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: containerView,
            attribute: .bottom,
            multiplier: 1,
            constant: 0
        )
        bottomConstraint?.isActive = true
        
        NSLayoutConstraint(
            item: containerView,
            attribute: .leading,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .leading,
            multiplier: 1,
            constant: 0
        ).isActive = true
        
        NSLayoutConstraint(
            item: containerView,
            attribute: .trailing,
            relatedBy: .equal,
            toItem: contentView,
            attribute: .trailing,
            multiplier: 1,
            constant: 0
        ).isActive = true
    }
}

//
//  SwipeAccessibilityCustomAction.swift
//  SwipeCellKit
//
//  Created by Jeremy Koch
//  Copyright © 2017 Jeremy Koch. All rights reserved.
//

import UIKit

class SwipeAccessibilityCustomAction: UIAccessibilityCustomAction {
    @objc let action: SwipeAction
    @objc let indexPath: IndexPath
    
    @objc init(action: SwipeAction, indexPath: IndexPath, target: Any, selector: Selector) {
        
        self.action = action
        self.indexPath = indexPath
        
        let name = action.accessibilityLabel ?? action.title ?? action.image?.accessibilityIdentifier ?? ""
        
        super.init(name: name, target: target, selector: selector)
    }
}

//
//  GameBoardMoveCell.swift
//  SuperTicTacToe
//
//  Created by Andrew Hulsizer on 8/23/14.
//  Copyright (c) 2014 Swift Yeti. All rights reserved.
//

import UIKit

class GameBoardMoveCell: GameBoardCell {
    
    let move: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)

        move = UIView(frame: CGRectInset(bounds, CGRectGetWidth(frame)*0.25, CGRectGetHeight(frame)*0.25))
        move.center = CGPointMake(CGRectGetWidth(bounds)/2, CGRectGetHeight(bounds)/2)
        move.layer.cornerRadius = CGRectGetWidth(move.frame)/2
        move.backgroundColor = UIColor.darkGrayColor()
        move.hidden = true
        addSubview(move)
    }
    
    func configureWithGamePiece(gamePiece: String) {
        switch gamePiece {
        case "":
            move.hidden = true
        case "One":
            move.hidden = false
            move.backgroundColor = UIColor.blueColor()
        case "Two":
            move.hidden = false
            move.backgroundColor = UIColor.redColor()
        default:
            move.hidden = true
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        move.center = CGPointMake(CGRectGetWidth(bounds)/2, CGRectGetHeight(bounds)/2)
    }
}

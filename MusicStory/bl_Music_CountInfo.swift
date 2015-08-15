//
//  bl_Music_CountInfo.swift
//  MusicStory
//
//  Created by yjq131250077 on 15/8/7.
//  Copyright (c) 2015 yjq131250077. All rights reserved.
//

import Foundation

class bl_Music_CountInfo :MusicCountInfo_BlService {
    func countScoreByGame(vo:GameInfoVo)->Int{
        var score:Int = 0
        var perfect = vo.perfectNum
        var great = vo.greatNum
        var bad = vo.badNum
        var miss  = vo.missNum
        var combo = vo.combo
        score = perfect*20+great*10+bad
        for comboE in combo{
            score = score + comboE*5
        }
        return score
    }
    
    func evaluationByGame(vo: GameInfoVo)->String {
        var score:Int = 0
        var perfect = vo.perfectNum
        var great = vo.greatNum
        var bad = vo.badNum
        var miss  = vo.missNum
        var combo = vo.combo
        var evaluation = ""
        score = perfect*20+great*10+bad
        for comboE in combo{
            if(comboE>=5){
            score = score + comboE*5
            }
        }
        var scoreMax = (perfect+great+bad+miss)*5+(perfect+great+bad+miss)*20
        if(Double(score)/Double(scoreMax)>=0.96){
            evaluation = "SSS"
        }else{
            if(Double(score)/Double(scoreMax)>=0.93){
                evaluation = "SS"
            }else{
                if(Double(score)/Double(scoreMax)>=0.90){
                    evaluation = "S"
                }else{
                    if(Double(score)/Double(scoreMax)>=0.80){
                        evaluation = "A"
                    }else{
                        if(Double(score)/Double(scoreMax)>=0.70){
                           evaluation = "B"
                        }else{
                            if(Double(score)/Double(scoreMax)>=0.60){
                                evaluation = "C"
                            }else{
                                evaluation = "D"
                            }
                        }
                    }
                }
            }
        }
        return evaluation
    }
    
    func countMoneyExByScore(score: Int) -> [Int] {
        var money:Int = (score*Constant.PET_STATE)/10000
        var experince:Int = (score*(100-Constant.PET_STATE))/10000
        return [money,experince]
        //Constant.PET_STATE
    }
}
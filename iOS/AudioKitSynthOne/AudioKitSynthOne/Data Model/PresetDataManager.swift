//
//  PresetDataManager.swift
//  AudioKitSynthOne
//
//  Created by Matthew Fecher on 10/23/17.
//  Copyright © 2017 AudioKit. All rights reserved.
//

import Foundation
import AudioKit

extension ParentViewController {
    // **********************************************************
    // MARK: - Preset Load/Save
    // **********************************************************
    
    func loadPreset() {
        conductor.synth.setAK1Parameter(.masterVolume, activePreset.masterVolume)
        conductor.synth.setAK1Parameter(.isMono, activePreset.isMono)
        conductor.synth.setAK1Parameter(.glide, activePreset.glide)
        conductor.synth.setAK1Parameter(.index1, activePreset.waveform1)
        conductor.synth.setAK1Parameter(.index2, activePreset.waveform2)
        conductor.synth.setAK1Parameter(.morph1SemitoneOffset, activePreset.vco1Semitone)
        conductor.synth.setAK1Parameter(.morph2SemitoneOffset, activePreset.vco2Semitone)
        conductor.synth.setAK1Parameter(.morph2Detuning, activePreset.vco2Detuning)
        conductor.synth.setAK1Parameter(.morph1Volume, activePreset.vco1Volume)
        conductor.synth.setAK1Parameter(.morph2Volume, activePreset.vco2Volume)
        conductor.synth.setAK1Parameter(.morphBalance, activePreset.vcoBalance)
        conductor.synth.setAK1Parameter(.subVolume, activePreset.subVolume)
        conductor.synth.setAK1Parameter(.subOctaveDown, activePreset.subOsc24Toggled)
        conductor.synth.setAK1Parameter(.subIsSquare, activePreset.subOscSquareToggled)
        conductor.synth.setAK1Parameter(.fmVolume, activePreset.fmVolume)
        conductor.synth.setAK1Parameter(.fmAmount, activePreset.fmMod)
        conductor.synth.setAK1Parameter(.noiseVolume, activePreset.noiseVolume)
        conductor.synth.setAK1Parameter(.cutoff, activePreset.cutoff)
        conductor.synth.setAK1Parameter(.resonance, activePreset.rez)
        conductor.synth.setAK1Parameter(.filterADSRMix, activePreset.filterADSRMix)
        conductor.synth.setAK1Parameter(.filterAttackDuration, activePreset.filterAttack)
        conductor.synth.setAK1Parameter(.filterDecayDuration, activePreset.filterDecay)
        conductor.synth.setAK1Parameter(.filterSustainLevel, activePreset.filterSustain)
        conductor.synth.setAK1Parameter(.filterReleaseDuration, activePreset.filterRelease)
        conductor.synth.setAK1Parameter(.attackDuration, activePreset.attackDuration)
        conductor.synth.setAK1Parameter(.decayDuration, activePreset.decayDuration)
        conductor.synth.setAK1Parameter(.sustainLevel, activePreset.sustainLevel)
        conductor.synth.setAK1Parameter(.releaseDuration, activePreset.releaseDuration)
        conductor.synth.setAK1Parameter(.bitCrushSampleRate, activePreset.crushFreq)
        conductor.synth.setAK1Parameter(.autoPanOn, activePreset.autoPanToggled)
        conductor.synth.setAK1Parameter(.autoPanFrequency, activePreset.autoPanRate)
        conductor.synth.setAK1Parameter(.reverbOn, activePreset.reverbToggled)
        conductor.synth.setAK1Parameter(.reverbFeedback, activePreset.reverbFeedback)
        conductor.synth.setAK1Parameter(.reverbHighPass, activePreset.reverbHighPass)
        conductor.synth.setAK1Parameter(.reverbMix, activePreset.reverbMix)
        conductor.synth.setAK1Parameter(.delayOn, activePreset.delayToggled)
        conductor.synth.setAK1Parameter(.delayFeedback, activePreset.delayFeedback)
        conductor.synth.setAK1Parameter(.delayTime, activePreset.delayTime)
        conductor.synth.setAK1Parameter(.delayMix, activePreset.delayMix)
        conductor.synth.setAK1Parameter(.lfo1Index, activePreset.lfoWaveform)
        conductor.synth.setAK1Parameter(.lfo1Amplitude, activePreset.lfoAmplitude)
        conductor.synth.setAK1Parameter(.lfo1Rate, activePreset.lfoRate)
        conductor.synth.setAK1Parameter(.lfo2Index, activePreset.lfo2Waveform)
        conductor.synth.setAK1Parameter(.lfo2Amplitude, activePreset.lfo2Amplitude)
        conductor.synth.setAK1Parameter(.lfo2Rate, activePreset.lfo2Rate)
        conductor.synth.setAK1Parameter(.cutoffLFO, activePreset.cutoffLFO)
        conductor.synth.setAK1Parameter(.resonanceLFO, activePreset.resonanceLFO)
        conductor.synth.setAK1Parameter(.oscMixLFO, activePreset.oscMixLFO)
        conductor.synth.setAK1Parameter(.sustainLFO, activePreset.sustainLFO)
        conductor.synth.setAK1Parameter(.index1LFO, activePreset.index1LFO)
        conductor.synth.setAK1Parameter(.index2LFO, activePreset.index2LFO)
        conductor.synth.setAK1Parameter(.fmLFO, activePreset.fmLFO)
        conductor.synth.setAK1Parameter(.detuneLFO, activePreset.detuneLFO)
        conductor.synth.setAK1Parameter(.filterEnvLFO, activePreset.filterEnvLFO)
        conductor.synth.setAK1Parameter(.pitchLFO, activePreset.pitchLFO)
        conductor.synth.setAK1Parameter(.bitcrushLFO, activePreset.bitcrushLFO)
        conductor.synth.setAK1Parameter(.autopanLFO, activePreset.autopanLFO)
        conductor.synth.setAK1Parameter(.arpDirection, activePreset.arpDirection)
        conductor.synth.setAK1Parameter(.arpInterval, activePreset.arpInterval)
        conductor.synth.setAK1Parameter(.arpIsOn, activePreset.isArpMode)
        conductor.synth.setAK1Parameter(.arpOctave, activePreset.arpOctave)
        conductor.synth.setAK1Parameter(.arpRate, activePreset.arpRate)
        conductor.synth.setAK1Parameter(.arpIsSequencer, activePreset.arpIsSequencer ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpTotalSteps, activePreset.arpTotalSteps )
        conductor.synth.setAK1Parameter(.arpSeqPattern00, Double(activePreset.seqPatternNote[0]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern01, Double(activePreset.seqPatternNote[1]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern02, Double(activePreset.seqPatternNote[2]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern03, Double(activePreset.seqPatternNote[3]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern04, Double(activePreset.seqPatternNote[4]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern05, Double(activePreset.seqPatternNote[5]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern06, Double(activePreset.seqPatternNote[6]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern07, Double(activePreset.seqPatternNote[7]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern08, Double(activePreset.seqPatternNote[8]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern09, Double(activePreset.seqPatternNote[9]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern10, Double(activePreset.seqPatternNote[10]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern11, Double(activePreset.seqPatternNote[11]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern12, Double(activePreset.seqPatternNote[12]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern13, Double(activePreset.seqPatternNote[13]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern14, Double(activePreset.seqPatternNote[14]) )
        conductor.synth.setAK1Parameter(.arpSeqPattern15, Double(activePreset.seqPatternNote[15]) )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost00, activePreset.seqOctBoost[0] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost01, activePreset.seqOctBoost[1] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost02, activePreset.seqOctBoost[2] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost03, activePreset.seqOctBoost[3] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost04, activePreset.seqOctBoost[4] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost05, activePreset.seqOctBoost[5] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost06, activePreset.seqOctBoost[6] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost07, activePreset.seqOctBoost[7] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost08, activePreset.seqOctBoost[8] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost09, activePreset.seqOctBoost[9] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost10, activePreset.seqOctBoost[10] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost11, activePreset.seqOctBoost[11] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost12, activePreset.seqOctBoost[12] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost13, activePreset.seqOctBoost[13] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost14, activePreset.seqOctBoost[14] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqOctBoost15, activePreset.seqOctBoost[15] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn00, activePreset.seqNoteOn[0] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn01, activePreset.seqNoteOn[1] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn02, activePreset.seqNoteOn[2] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn03, activePreset.seqNoteOn[3] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn04, activePreset.seqNoteOn[4] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn05, activePreset.seqNoteOn[5] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn06, activePreset.seqNoteOn[6] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn07, activePreset.seqNoteOn[7] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn08, activePreset.seqNoteOn[8] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn09, activePreset.seqNoteOn[9] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn10, activePreset.seqNoteOn[10] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn11, activePreset.seqNoteOn[11] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn12, activePreset.seqNoteOn[12] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn13, activePreset.seqNoteOn[13] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn14, activePreset.seqNoteOn[14] ? 1 : 0 )
        conductor.synth.setAK1Parameter(.arpSeqNoteOn15, activePreset.seqNoteOn[15] ? 1 : 0 )

        conductor.synth.resetSequencer()
        
        #if false
        ///TODO:REMOVE DEBUG LOGGING
        AKLog("----------------------------------------------------------------------")
        AKLog("Preset #\(activePreset.position) \(activePreset.name)")
        for i in 0..<AKSynthOneParameter.count {
            let param : AKSynthOneParameter = AKSynthOneParameter(rawValue: i)!
            let sd = param.simpleDescription()
            AKLog("\(i) = \(sd) = \(conductor.synth.getAK1Parameter(param))")
        }
        AKLog("END----------------------------------------------------------------------")
            #endif
        
        // Update arpVC AFTER DSP params are set
        seqViewController.setupControlValues()
    }
    
    
    func saveValuesToPreset() {
        activePreset.vcoBalance = conductor.synth.getAK1Parameter(.morphBalance)
        activePreset.rez = conductor.synth.getAK1Parameter(.resonance)
        activePreset.cutoff = conductor.synth.getAK1Parameter(.cutoff)
        //presetsViewController.savePreset(activePreset)
    }
}

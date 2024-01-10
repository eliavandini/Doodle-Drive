PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//318320/1246223/2.50/4/4/Crystal or Oscillator

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r190_130"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.300) (shapeHeight 1.900))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "MC306327680KE3ROHS" (originalName "MC306327680KE3ROHS")
		(multiLayer
			(pad (padNum 1) (padStyleRef r190_130) (pt -2.750, -1.600) (rotation 0))
			(pad (padNum 2) (padStyleRef r190_130) (pt 2.750, -1.600) (rotation 0))
			(pad (padNum 3) (padStyleRef r190_130) (pt 2.750, 1.600) (rotation 0))
			(pad (padNum 4) (padStyleRef r190_130) (pt -2.750, 1.600) (rotation 0))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt -0.000, 0.000) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt -4 1.6) (pt 4 1.6) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 4 1.6) (pt 4 -1.6) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 4 -1.6) (pt -4 -1.6) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -4 -1.6) (pt -4 1.6) (width 0.025))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -4.5 3.05) (pt 4.5 3.05) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 4.5 3.05) (pt 4.5 -3.05) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 4.5 -3.05) (pt -4.5 -3.05) (width 0.1))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -4.5 -3.05) (pt -4.5 3.05) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.9 -2.1) (pt -3.9 -2.1) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -3.9, -2.2) (radius 0.1) (startAngle 90.0) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.9 -2.3) (pt -3.9 -2.3) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(arc (pt -3.9, -2.2) (radius 0.1) (startAngle 270) (sweepAngle 180.0) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.5 1.6) (pt 1.5 1.6) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.5 -1.6) (pt 1.5 -1.6) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -4 1.6) (pt -4 -1.6) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 4 1.6) (pt 4 -1.6) (width 0.1))
		)
	)
	(symbolDef "MC-306_32.7680K-E3_ROHS" (originalName "MC-306_32.7680K-E3_ROHS")

		(pin (pinNum 1) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 1400 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1170 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 3) (pt 1400 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1170 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 4) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 100 mils) (pt 1200 mils 100 mils) (width 6 mils))
		(line (pt 1200 mils 100 mils) (pt 1200 mils -200 mils) (width 6 mils))
		(line (pt 1200 mils -200 mils) (pt 200 mils -200 mils) (width 6 mils))
		(line (pt 200 mils -200 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 1250 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 1250 mils 200 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "MC-306_32.7680K-E3_ROHS" (originalName "MC-306_32.7680K-E3_ROHS") (compHeader (numPins 4) (numParts 1) (refDesPrefix Y)
		)
		(compPin "1" (pinName "CRYSTAL_1") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "2" (pinName "GND_1") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "3" (pinName "GND_2") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "4" (pinName "CRYSTAL_2") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Unknown))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "MC-306_32.7680K-E3_ROHS"))
		(attachedPattern (patternNum 1) (patternName "MC306327680KE3ROHS")
			(numPads 4)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
			)
		)
		(attr "Mouser Part Number" "732-MC30632.768K-E3R")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Epson-Timing/MC-306-32.7680K-E3ROHS?qs=CU9taR8hkvbntLhqKVy%2F5g%3D%3D")
		(attr "Manufacturer_Name" "Epson Timing")
		(attr "Manufacturer_Part_Number" "MC-306 32.7680K-E3:ROHS")
		(attr "Description" "Crystals 32.768KHz 6pF 20ppm -40C +85C")
		(attr "<Hyperlink>" "https://componentsearchengine.com/Datasheets/1/MC-306 32.7680K-E3_ROHS.pdf")
		(attr "<Component Height>" "2.54")
		(attr "<STEP Filename>" "MC-306_32.7680K-E3_ROHS.stp")
		(attr "<STEP Offsets>" "X=0;Y=0;Z=0")
		(attr "<STEP Rotation>" "X=0;Y=0;Z=0")
	)

)

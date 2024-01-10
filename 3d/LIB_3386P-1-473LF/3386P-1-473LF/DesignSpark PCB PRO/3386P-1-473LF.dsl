SamacSys ECAD Model
855923/1246223/2.50/3/3/Variable Resistor

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "c121.7_h71"
		(holeDiam 0.71)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 1.217) (shapeHeight 1.217))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 1.217) (shapeHeight 1.217))
	)
	(padStyleDef "s121.7_h71"
		(holeDiam 0.71)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.217) (shapeHeight 1.217))
		(padShape (layerNumRef 16) (padShapeType Rect)  (shapeWidth 1.217) (shapeHeight 1.217))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "3386P1473LF" (originalName "3386P1473LF")
		(multiLayer
			(pad (padNum 1) (padStyleRef s121.7_h71) (pt 0.000, 0.000) (rotation 90))
			(pad (padNum 2) (padStyleRef c121.7_h71) (pt -2.540, 2.540) (rotation 90))
			(pad (padNum 3) (padStyleRef c121.7_h71) (pt -5.080, 0.000) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt -2.540, -0.015) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 28)
			(line (pt -7.305 4.75) (pt 2.225 4.75) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 2.225 4.75) (pt 2.225 -4.78) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 2.225 -4.78) (pt -7.305 -4.78) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -7.305 -4.78) (pt -7.305 4.75) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -7.305 -4.78) (pt 2.225 -4.78) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 2.225 -4.78) (pt 2.225 4.75) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 2.225 4.75) (pt -7.305 4.75) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -7.305 4.75) (pt -7.305 -4.78) (width 0.2))
		)
		(layerContents (layerNumRef 30)
			(line (pt -8.305 -5.78) (pt 3.225 -5.78) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 3.225 -5.78) (pt 3.225 5.75) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt 3.225 5.75) (pt -8.305 5.75) (width 0.1))
		)
		(layerContents (layerNumRef 30)
			(line (pt -8.305 5.75) (pt -8.305 -5.78) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 2.8 0) (pt 2.8 0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 2.75, 0) (radius 0.05) (startAngle .0) (sweepAngle 180.0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt 2.7 0) (pt 2.7 0) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(arc (pt 2.75, 0) (radius 0.05) (startAngle 180) (sweepAngle 180.0) (width 0.1))
		)
	)
	(symbolDef "3386P-1-473LF" (originalName "3386P-1-473LF")

		(pin (pinNum 1) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 1100 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 870 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 3) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(line (pt 200 mils 100 mils) (pt 900 mils 100 mils) (width 6 mils))
		(line (pt 900 mils 100 mils) (pt 900 mils -200 mils) (width 6 mils))
		(line (pt 900 mils -200 mils) (pt 200 mils -200 mils) (width 6 mils))
		(line (pt 200 mils -200 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 950 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "3386P-1-473LF" (originalName "3386P-1-473LF") (compHeader (numPins 3) (numParts 1) (refDesPrefix VR)
		)
		(compPin "1" (pinName "CCW") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "WIPER") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "CW") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "3386P-1-473LF"))
		(attachedPattern (patternNum 1) (patternName "3386P1473LF")
			(numPads 3)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
			)
		)
		(attr "Mouser Part Number" "652-3386P-1-473LF")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Bourns/3386P-1-473LF?qs=g1MxsQ5vwlQqJF6lV59CvQ%3D%3D")
		(attr "Manufacturer_Name" "Bourns")
		(attr "Manufacturer_Part_Number" "3386P-1-473LF")
		(attr "Description" "Trimmer Resistors - Through Hole 3/8" 47Kohms 10% 0.5Watts Square")
		(attr "Datasheet Link" "https://www.bourns.com/docs/Product-Datasheets/3386.pdf")
		(attr "Height" "5.08 mm")
	)

)

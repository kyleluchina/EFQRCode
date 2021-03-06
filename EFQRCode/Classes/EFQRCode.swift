//
//  EFQRCode.swift
//  Pods
//
//  Created by EyreFree on 2017/3/28.
//
//  Copyright (c) 2017 EyreFree <eyrefree@eyrefree.org>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation
import UIKit

public class EFQRCode {

    // MARK:- Recognizer
    public static func recognize(image: UIImage) -> [String]? {
        return EFQRCodeRecognizer(image: image).contents
    }

    // MARK:- Generator
    public static func generate(
        content: String,
        inputCorrectionLevel: EFInputCorrectionLevel = .h,
        size: CGFloat = 256,
        magnification: UInt? = nil,
        backgroundColor: UIColor = UIColor.white,
        foregroundColor: UIColor = UIColor.black,
        icon: UIImage? = nil,
        iconSize: CGFloat? = nil,
        isIconColorful: Bool = true,
        watermark: UIImage? = nil,
        watermarkMode: EFWatermarkMode = .scaleToFill,
        isWatermarkColorful: Bool = true
        ) -> UIImage? {

        return EFQRCodeGenerator(
            content: content,
            inputCorrectionLevel: inputCorrectionLevel,
            size: size,
            magnification: magnification,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            icon: icon,
            iconSize: iconSize,
            isIconColorful: isIconColorful,
            watermark: watermark,
            watermarkMode: watermarkMode,
            isWatermarkColorful: isWatermarkColorful
            ).image
    }

    // MARK:-
    public static func avarageColor(image: UIImage) -> UIColor? {
        return image.avarageColor()
    }
}

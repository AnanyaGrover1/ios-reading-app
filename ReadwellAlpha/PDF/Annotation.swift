//
//  Annotation.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/6/22.
//

//
//  ImageAnnotation.swift
//  PDFKit-Swift
////
//
//
//import PDFKit
//
//class PDFImageAnnotation: PDFAnnotation {
//
//    var image: UIImage?
//
//    convenience init(_ image: UIImage?, bounds: CGRect, properties: [AnyHashable : Any]?) {
//        self.init(bounds: bounds, forType: PDFAnnotationSubtype.stamp, withProperties: properties)
//        self.image = image
//    }
//
//    // Make private to avoid the use of this class to make annotation of other types.
//    private override init(bounds: CGRect, forType annotationType: PDFAnnotationSubtype, withProperties properties: [AnyHashable : Any]?) {
//        super.init(bounds: bounds, forType: annotationType, withProperties: properties)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    override func draw(with box: PDFDisplayBox, in context: CGContext) {
//        super.draw(with: box, in: context)
//
//        guard let cgImage = image?.cgImage else { return }
//        context.draw(cgImage, in: bounds)
//    }
//}



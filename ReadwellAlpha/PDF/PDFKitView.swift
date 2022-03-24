//
//  PDFKitView.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/6/22.
//

import SwiftUI
import PDFKit

struct PDFKitView: View {
    var url: URL

    var body: some View {
        PDFKitRepresentedView(url)
    }
}

#if DEBUG
struct PDFKitView_Preview: PreviewProvider {
    static var previews: some View {
//        PDFKitRepresentedView(Bundle.main.bundleURL.appendingPathComponent("USSBS.pdf"))
        
        PDFKitRepresentedView(URL(string:"https://careerdevelopment.princeton.edu/sites/careerdevelopment/files/resume_guide_2020.pdf") ?? Bundle.main.bundleURL.appendingPathComponent("USSBS.pdf"))
    }
}
#endif

struct PDFKitRepresentedView: UIViewRepresentable {
    let url: URL

    init(_ url: URL) {
        self.url = url
    }

    func makeUIView(context: UIViewRepresentableContext<PDFKitRepresentedView>) -> PDFKitRepresentedView.UIViewType {
        // Create a `PDFView` and set its `PDFDocument`.
        let pdfView = PDFView()
        pdfView.document = PDFDocument(url: self.url)
//        pdfView.displayDirection = .horizontal
//            pdfView.usePageViewController(true)
//        pdfView.pageBreakMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        pdfView.autoScales = true

    

        return pdfView
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PDFKitRepresentedView>) {
        // Update the view.
    }
}


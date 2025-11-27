//
//  CropView.swift
//  CroppedPhotosPickerDemo
//
//  Created by Alex Nagy on 16.04.2024.
//

import CropViewController
import SwiftUI

public struct CropView: UIViewControllerRepresentable {
    // MARK: Lifecycle

    public init(
        image: UIImage,

        croppingStyle: CroppedPhotosPickerCroppingStyle = .default,
        croppingOptions: CroppedPhotosPickerOptions = .init(),
        didCropToImage: ((CroppedImage) -> Void)? = nil,
        didCropToCircularImage: ((CroppedImage) -> Void)? = nil,
        didCropImageToRect: ((CroppedRect) -> Void)? = nil,
        didFinishCancelled: @escaping (Bool) -> Void
    ) {
        self.image = image

        self.didCropToImage = didCropToImage
        self.didCropToCircularImage = didCropToCircularImage
        self.didCropImageToRect = didCropImageToRect
        self.didFinishCancelled = didFinishCancelled

        controller = CropViewController(croppingStyle: croppingStyle, image: image)
        controller.setCroppingOptions(croppingOptions)
    }

    // MARK: Internal

    public struct CroppedRect {
        public let rect: CGRect
        public let angle: Int
    }

    public struct CroppedImage {
        public let image: UIImage
        public let rect: CGRect
        public let angle: Int
    }

    public class Coordinator: NSObject, CropViewControllerDelegate {
        // MARK: Lifecycle

        public init(parent: CropView) {
            self.parent = parent
        }

        // MARK: Internal

        let parent: CropView

        public func cropViewController(_: CropViewController, didCropToImage image: UIImage, withRect cropRect: CGRect, angle: Int) {
            let croppedImage = CroppedImage(image: image, rect: cropRect, angle: angle)
            parent.didCropToImage?(croppedImage)
        }

        public func cropViewController(_: CropViewController, didCropToCircularImage image: UIImage, withRect cropRect: CGRect, angle: Int) {
            let croppedImage = CroppedImage(image: image, rect: cropRect, angle: angle)
            parent.didCropToImage?(croppedImage)
        }

        public func cropViewController(_: CropViewController, didCropImageToRect cropRect: CGRect, angle: Int) {
            let croppedRect = CroppedRect(rect: cropRect, angle: angle)
            parent.didCropImageToRect?(croppedRect)
        }

        public func cropViewController(_: CropViewController, didFinishCancelled cancelled: Bool) {
            parent.didFinishCancelled(cancelled)
        }
    }

    public func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }

    public func makeUIViewController(context: Context) -> some UIViewController {
        controller.delegate = context.coordinator
        return controller
    }

    public func updateUIViewController(_: UIViewControllerType, context _: Context) {}

    // MARK: Private

    private var image: UIImage
    private var didCropToImage: ((CroppedImage) -> Void)?
    private var didCropToCircularImage: ((CroppedImage) -> Void)?
    private var didCropImageToRect: ((CroppedRect) -> Void)?
    private var didFinishCancelled: (Bool) -> Void

    private let controller: CropViewController
}

// swiftlint:disable discouraged_optional_boolean

import CropViewController
import Foundation
import SwiftUI

public struct CroppedPhotosPickerOptions {
    var minimumAspectRatio: CGFloat?
    var title: String?
    var showActivitySheetOnDone: Bool?
    var imageCropFrame: CGRect?
    var angle: Int?
    var aspectRatioPreset: CropViewControllerAspectRatioPreset?
    var customAspectRatio: CGSize?
    var customAspectRatioName: String?
    var aspectRatioLockEnabled: Bool?
    var aspectRatioLockDimensionSwapEnabled: Bool?
    var resetAspectRatioEnabled: Bool?
    var toolbarPosition: CropViewControllerToolbarPosition?
    var rotateClockwiseButtonHidden: Bool?
    var rotateButtonsHidden: Bool?
    var resetButtonHidden: Bool?
    var aspectRatioPickerButtonHidden: Bool?
    var doneButtonHidden: Bool?
    var cancelButtonHidden: Bool?
    var activityItems: [Any]?
    var applicationActivities: [UIActivity]?
    var excludedActivityTypes: [UIActivity.ActivityType]?
    var allowedAspectRatios: [CropViewControllerAspectRatioPreset]?
    var hidesNavigationBar: Bool?
    var doneButtonTitle: String?
    var cancelButtonTitle: String?
    var showOnlyIcons: Bool?
    var showCancelConfirmationDialog: Bool?
    var doneButtonColor: Color?
    var cancelButtonColor: Color?
    var reverseContentLayout: Bool?

    public init(minimumAspectRatio: CGFloat? = nil, title: String? = nil, showActivitySheetOnDone: Bool? = nil, imageCropFrame: CGRect? = nil, angle: Int? = nil, aspectRatioPreset: CropViewControllerAspectRatioPreset? = nil, customAspectRatio: CGSize? = nil, customAspectRatioName: String? = nil, aspectRatioLockEnabled: Bool? = nil, aspectRatioLockDimensionSwapEnabled: Bool? = nil, resetAspectRatioEnabled: Bool? = nil, toolbarPosition: CropViewControllerToolbarPosition? = nil, rotateClockwiseButtonHidden: Bool? = nil, rotateButtonsHidden: Bool? = nil, resetButtonHidden: Bool? = nil, aspectRatioPickerButtonHidden: Bool? = nil, doneButtonHidden: Bool? = nil, cancelButtonHidden: Bool? = nil, activityItems: [Any]? = nil, applicationActivities: [UIActivity]? = nil, excludedActivityTypes: [UIActivity.ActivityType]? = nil, allowedAspectRatios: [CropViewControllerAspectRatioPreset]? = nil, hidesNavigationBar: Bool? = nil, doneButtonTitle: String? = nil, cancelButtonTitle: String? = nil, showOnlyIcons: Bool? = nil, showCancelConfirmationDialog: Bool? = nil, doneButtonColor: Color? = nil, cancelButtonColor: Color? = nil, reverseContentLayout: Bool? = nil) {
        self.minimumAspectRatio = minimumAspectRatio
        self.title = title
        self.showActivitySheetOnDone = showActivitySheetOnDone
        self.imageCropFrame = imageCropFrame
        self.angle = angle
        self.aspectRatioPreset = aspectRatioPreset
        self.customAspectRatio = customAspectRatio
        self.customAspectRatioName = customAspectRatioName
        self.aspectRatioLockEnabled = aspectRatioLockEnabled
        self.aspectRatioLockDimensionSwapEnabled = aspectRatioLockDimensionSwapEnabled
        self.resetAspectRatioEnabled = resetAspectRatioEnabled
        self.toolbarPosition = toolbarPosition
        self.rotateClockwiseButtonHidden = rotateClockwiseButtonHidden
        self.rotateButtonsHidden = rotateButtonsHidden
        self.resetButtonHidden = resetButtonHidden
        self.aspectRatioPickerButtonHidden = aspectRatioPickerButtonHidden
        self.doneButtonHidden = doneButtonHidden
        self.cancelButtonHidden = cancelButtonHidden
        self.activityItems = activityItems
        self.applicationActivities = applicationActivities
        self.excludedActivityTypes = excludedActivityTypes
        self.allowedAspectRatios = allowedAspectRatios
        self.hidesNavigationBar = hidesNavigationBar
        self.doneButtonTitle = doneButtonTitle
        self.cancelButtonTitle = cancelButtonTitle
        self.showOnlyIcons = showOnlyIcons
        self.showCancelConfirmationDialog = showCancelConfirmationDialog
        self.doneButtonColor = doneButtonColor
        self.cancelButtonColor = cancelButtonColor
        self.reverseContentLayout = reverseContentLayout
    }
}

let Constants = [];

// set perspectives constant
if (typeof AptoPerspectives === "undefined") {
    Constants.push(['APTO_RENDER_IMAGE_PERSPECTIVES', {
        default: 'persp1',
        perspectives: ['persp1', 'persp2', 'persp3', 'persp4'],
        basketPerspectives: ['persp1']
    }]);
} else {
    Constants.push(['APTO_RENDER_IMAGE_PERSPECTIVES', AptoPerspectives]);
}

export default Constants;
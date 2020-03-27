// ==========================================
// Convert HEX to RGB
// ==========================================

function hex2rgb(hex) {
    const result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
    return result ?
        {
            r: parseInt(result[1], 16),
            g: parseInt(result[2], 16),
            b: parseInt(result[3], 16)
        } :
        null;
}

// ==========================================
// Convert RGB to HEX
// ==========================================

function rgb2hex(rgb) {
    rgb = rgb.match(
        /^rgb?[\s+]?\([\s+]?(\d+)[\s+]?,[\s+]?(\d+)[\s+]?,[\s+]?(\d+)[\s+]?/i
    );
    return rgb && rgb.length === 4 ?
        `#${(`0${parseInt(rgb[1], 10).toString(16)}`).slice(-2)}${(`0${parseInt(rgb[2], 10).toString(16)}`).slice(-2)}${(`0${parseInt(rgb[3], 10).toString(16)}`).slice(-2)}` :
        "";
}

// ==========================================
// Change HexColor
// ==========================================

function changeHexColor(hex, lum) {
    // validate hex string
    hex = String(hex).replace(/[^0-9a-f]/gi, "");

    if (hex.length < 6) {
        hex = hex[0] + hex[0] + hex[1] + hex[1] + hex[2] + hex[2];
    }

    lum = lum || 0; // convert to decimal and change luminosity

    let rgb = "#";
    let c;
    let i;

    for (i = 0; i < 3; i++) {
        c = parseInt(hex.substr(i * 2, 2), 16);
        c = Math.round(Math.min(Math.max(0, c + c * lum), 255)).toString(16);
        rgb += (`00${c}`).substr(c.length);
    }

    return rgb;
}

// ==========================================
// Invert the R,G and B components
// ==========================================

function padZero(str, len = 2) {
    const zeros = new Array(len).join('0');
    return (zeros + str).slice(-len);
}

function invertColor(hex) {
    if (hex.indexOf('#') === 0) {
        hex = hex.slice(1);
    }

    if (hex.length === 3) {
        hex = hex[0] + hex[0] + hex[1] + hex[1] + hex[2] + hex[2];
    }

    let r = parseInt(hex.slice(0, 2), 16);
    let g = parseInt(hex.slice(2, 4), 16);
    let b = parseInt(hex.slice(4, 6), 16);

    return (r * 0.299 + g * 0.587 + b * 0.114) > 186 ?
        '#000000' :
        '#FFFFFF';

    r = (255 - r).toString(16);
    g = (255 - g).toString(16);
    b = (255 - b).toString(16);

    return `#${padZero(r)}${padZero(g)}${padZero(b)}`;
}


function invertColorRgba(hex) {
    if (hex.indexOf('#') === 0) {
        hex = hex.slice(1);
    }

    if (hex.length === 3) {
        hex = hex[0] + hex[0] + hex[1] + hex[1] + hex[2] + hex[2];
    }

    let r = parseInt(hex.slice(0, 2), 16);
    let g = parseInt(hex.slice(2, 4), 16);
    let b = parseInt(hex.slice(4, 6), 16);

    return (r * 0.299 + g * 0.587 + b * 0.114) > 186 ?
        'rgba(0, 0, 0, 0.7)' :
        'rgba(255, 255, 255, 0.7)';

    r = (255 - r).toString(16);
    g = (255 - g).toString(16);
    b = (255 - b).toString(16);

    return `#${padZero(r)}${padZero(g)}${padZero(b)}`;
}
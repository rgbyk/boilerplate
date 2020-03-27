// ==========================================
// ! Copy HEX to Clipboard
// ==========================================

const clipboard = new ClipboardJS('.cs-item--figure');
clipboard.on('success', e => {
    e.clearSelection();
});

// ==========================================
// ! Change Color Blindness
// ==========================================

function onChangeColorBlindness() {
    let str = "";
    const select = document.getElementById("demo-color-cvd");
    const option = select.options[select.selectedIndex];

    document.querySelectorAll(".cvd").forEach(({
        style
    }) => {
        style.filter = `url('#${option.value}') grayscale(0)`;
    });
}
// ==========================================
// ! Highlight Rouge Hexes
// ==========================================

if (document.querySelectorAll(".mh")) {
    document.querySelectorAll(".mh").forEach(({innerText, style}) => {
        let hex = innerText;
        style.background = hex;
        style.color = invertColorRgba(hex);
    });
}

ready(() => {
    onChangeColorBlindness();
});

// ==========================================
// ! Get Color Value (RGB)
// ==========================================

function extractColorValue(e) {
    let transparent = 'rgba(0, 0, 0, 0)';
    let transparentIE11 = 'transparent';
    if (!e) return transparent;

    let bg = getComputedStyle(e).backgroundColor;
    if (bg === transparent || bg === transparentIE11) {
        return extractColorValue(e.parentElement);
    } else {
        return bg;
    }
}

// ==========================================
// ! Loop Color Schemes
// ==========================================

function changeAriaHidden(evt) {
    el = this;
    if (el.getAttribute("aria-hidden") == "true") {
        el.setAttribute("aria-hidden", "false");
    } else {
        el.setAttribute("aria-hidden", "true");
    }
}

function extractColorValuesPerRow() {
    document.querySelectorAll(".cs-row--item.cs-row--data").forEach(el => {
        const itemFigure = el.querySelectorAll('.cs-item--figure');

        const itemFigureHex = el.querySelectorAll('.cs-item--hex');
        const itemFigureRgb = el.querySelectorAll('.cs-item--rgb');
        const itemFigureNote = el.querySelectorAll('.cs-item--note');

        itemFigure.forEach(x => {
            const itemRGB = extractColorValue(x);
            const itemHEX = rgb2hex(itemRGB);

            x.style.color = invertColor(itemHEX);
            x.setAttribute('data-clipboard-text', itemHEX);

            itemFigureRgb.forEach(e => {
                e.innerHTML = itemRGB;
            });

            itemFigureHex.forEach(e => {
                e.innerHTML = itemHEX;
            });
        });

        el.addEventListener("click", changeAriaHidden, true);
    });
}


// ==========================================
// ! Change Color Brand
// ==========================================
function onChangeStylesheet(sheet) {
    document.getElementById('swap').setAttribute('href', sheet)
}

function onChangeColorBrand() {
    let str = "";

    const brand = document.getElementById("demo-color-brand").options[document.getElementById("demo-color-brand").selectedIndex].value;
    const model = document.getElementById("demo-color-model").options[document.getElementById("demo-color-model").selectedIndex].value;

    const harmony = document.getElementById("demo-color-harmony").getAttribute("aria-checked");
    const neutral = document.getElementById("demo-color-neutral").getAttribute("aria-checked");
    const pastel = document.getElementById("demo-color-pastel").getAttribute("aria-checked");
    // var alpha = document.getElementById("demo-color-alpha").getAttribute("aria-checked");

    console.clear();

    if (brand == "default") {
        console.log('%c Default', 'font-weight: bold; background: #222; padding-top: .25rem; padding-bottom: .25rem; color: #FFF');
    } else if (brand == "airbnb") {
        console.log('%c Airbnb (#fd5c63)', 'font-weight: bold; background: #222; padding-top: .25rem; padding-bottom: .25rem; color: #fd5c63');
    } else if (brand == "spotify") {
        console.log('%c Spotify (#1db954)', 'font-weight: bold; background: #222; padding-top: .25rem; padding-bottom: .25rem; color: #1db954');
    } else if (brand == "twitter") {
        console.log('%c Twitter (#1da1f2)', 'font-weight: bold; background: #222; padding-top: .25rem; padding-bottom: .25rem; color: #1da1f2');
    } else if (brand == "cocacola") {
        console.log('%c Coca Cola (#ed1c16)', 'font-weight: bold; background: #222; padding-top: .25rem; padding-bottom: .25rem; color: #ed1c16');
    } else if (brand == "disneyxd") {
        console.log('%c Disney XD (#0af167)', 'font-weight: bold; background: #222; padding-top: .25rem; padding-bottom: .25rem; color: #0af167');
    } else if (brand == "facebook") {
        console.log('%c Facebook (#3b5998)', 'font-weight: bold; background: #222; padding-top: .25rem; padding-bottom: .25rem; color: #3b5998');
    } else if (brand == "snapchat") {
        console.log('%c Snapchat (#fffc00)', 'font-weight: bold; background: #222; padding-top: .25rem; padding-bottom: .25rem; color: #fffc00');
    } else {}

    if (model == "rgb") {
        console.log('%c RGB ', 'font-weight: bold; padding-top: .25rem; padding-bottom: .25rem; background: linear-gradient(to right, #FF0000, #00FF00, #0000FF); color: #000000');
    } else if (model == "ryb") {
        console.log('%c RYB ', 'font-weight: bold; padding-top: .25rem; padding-bottom: .25rem; background: linear-gradient(to right, #FE2712, #FEFE33, #0247FE); color: #000000');
    } else {}

    // create default paths
    const path = `/colorimetry/assets/css/brand/${brand}/style.${model}`;

    function buildUri() {
        uri = '';

        if (harmony == "false" && neutral == "false" && pastel == "false") {
            console.log(`%c Color Harmony: ${harmony}`, 'font-weight: bold; background: #222; color: #e64141;');
            console.log(`%c Color Neutral: ${neutral}`, 'font-weight: bold; background: #222; color: #e64141;');
            console.log(`%c Color Pastel: ${pastel}`, 'font-weight: bold; background: #222; color: #e64141;');
            uri = `${path}.000.css`;
        } else if (harmony == "true" && neutral == "false" && pastel == "false") {
            console.log(`%c Color Harmony: ${harmony}`, 'font-weight: bold; background: #222; color: #41e694;');
            console.log(`%c Color Neutral: ${neutral}`, 'font-weight: bold; background: #222; color: #e64141;');
            console.log(`%c Color Pastel: ${pastel}`, 'font-weight: bold; background: #222; color: #e64141;');
            uri = `${path}.100.css`;
        } else if (harmony == "true" && neutral == "true" && pastel == "false") {
            console.log(`%c Color Harmony: ${harmony}`, 'font-weight: bold; background: #222; color: #41e694;');
            console.log(`%c Color Neutral: ${neutral}`, 'font-weight: bold; background: #222; color: #41e694;');
            console.log(`%c Color Pastel: ${pastel}`, 'font-weight: bold; background: #222; color: #e64141;');
            uri = `${path}.110.css`;
        } else if (harmony == "true" && neutral == "true" && pastel == "true") {
            console.log(`%c Color Harmony: ${harmony}`, 'font-weight: bold; background: #222; color: #41e694;');
            console.log(`%c Color Neutral: ${neutral}`, 'font-weight: bold; background: #222; color: #41e694;');
            console.log(`%c Color Pastel: ${pastel}`, 'font-weight: bold; background: #222; color: #41e694;');
            uri = `${path}.111.css`;
        } else if (harmony == "false" && neutral == "true" && pastel == "true") {
            console.log(`%c Color Harmony: ${harmony}`, 'font-weight: bold; background: #222; color: #e64141;');
            console.log(`%c Color Neutral: ${neutral}`, 'font-weight: bold; background: #222; color: #41e694;');
            console.log(`%c Color Pastel: ${pastel}`, 'font-weight: bold; background: #222; color: #41e694;');
            uri = `${path}.011.css`;
        } else if (harmony == "false" && neutral == "false" && pastel == "true") {
            console.log(`%c Color Harmony: ${harmony}`, 'font-weight: bold; background: #222; color: #e64141;');
            console.log(`%c Color Neutral: ${neutral}`, 'font-weight: bold; background: #222; color: #e64141;');
            console.log(`%c Color Pastel: ${pastel}`, 'font-weight: bold; background: #222; color: #41e694;');
            uri = `${path}.001.css`;
        } else if (harmony == "true" && neutral == "false" && pastel == "true") {
            console.log(`%c Color Harmony: ${harmony}`, 'font-weight: bold; background: #222; color: #41e694;');
            console.log(`%c Color Neutral: ${neutral}`, 'font-weight: bold; background: #222; color: #e64141;');
            console.log(`%c Color Pastel: ${pastel}`, 'font-weight: bold; background: #222; color: #41e694;');
            uri = `${path}.101.css`;
        } else if (harmony == "false" && neutral == "true" && pastel == "false") {
            console.log(`%c Color Harmony: ${harmony}`, 'font-weight: bold; background: #222; color: #e64141;');
            console.log(`%c Color Neutral: ${neutral}`, 'font-weight: bold; background: #222; color: #41e694;');
            console.log(`%c Color Pastel: ${pastel}`, 'font-weight: bold; background: #222; color: #e64141;');
            uri = `${path}.010.css`;
        } else {
            console.log("not set")
        }

        onChangeStylesheet(uri);

        setTimeout(() => {
            extractColorValuesPerRow();
        }, 500);
    }

    buildUri();
}

ready(() => {
    extractColorValuesPerRow();
    onChangeColorBrand();

    document.querySelectorAll(".store-data").forEach(e => {
        e.addEventListener("click", onChangeColorBrand, true);
    });
});
document.querySelectorAll(".btn-switch").forEach(theSwitch => {
    theSwitch.addEventListener("click", handleClickEvent, true);
});

function handleClickEvent(evt) {
    let el = this;

    if (el.getAttribute("aria-checked") == "true") {
        el.setAttribute("aria-checked", "false");
    } else {
        el.setAttribute("aria-checked", "true");
    }
}
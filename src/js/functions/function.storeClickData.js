function getStoreDataSwitch(el){
    let id = el.getAttribute("id");
    let cookie = Cookies.get(id);

    if (cookie == "true"){
        el.setAttribute("aria-checked", "true");
    } else if (cookie == "false"){
        el.setAttribute("aria-checked", "false");
    } else{
        var state = el.getAttribute("aria-checked");
        Cookies.set(id, state);
    }
}

function changeStoreDataSwitch(evt){
    let el = this;
    let id = el.getAttribute("id");

    if (el.getAttribute("aria-checked") == "true") {
        el.setAttribute("aria-checked", "false");
        Cookies.set(id, "false");
    } else {
        el.setAttribute("aria-checked", "true");
        Cookies.set(id, "true");
    }
}

ready(() => {
    document.querySelectorAll(".store-data").forEach(function(el) {
        getStoreDataSwitch(el);
        el.addEventListener("click", changeStoreDataSwitch, true);
    });
});
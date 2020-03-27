function getCookie(name) {
    var dc = document.cookie;
    var prefix = name + "=";
    var begin = dc.indexOf("; " + prefix);
    if (begin == -1) {
        begin = dc.indexOf(prefix);
        if (begin != 0) return null;
    }
    else
    {
        begin += 2;
        var end = document.cookie.indexOf(";", begin);
        if (end == -1) {
        end = dc.length;
        }
    }
    // because unescape has been deprecated, replaced with decodeURI
    //return unescape(dc.substring(begin + prefix.length, end));
    return decodeURI(dc.substring(begin + prefix.length, end));
} 

document.querySelectorAll(".store-data--select").forEach(function(e) {
    let id = e.getAttribute("id");
    let cookie = getCookie(id);

    if (cookie != null) {
        e.value = Cookies.get(id);
    }
});

function changeStoreDataSelect(e){
    let id = e.getAttribute("id");
    let option = e.options[e.selectedIndex].value;
    Cookies.set(id, option);
}
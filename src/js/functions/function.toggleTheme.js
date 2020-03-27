// ==========================================
// ! Toggle Theme (Light/Dark)
// ==========================================
function checkThemeCookie() {
    let siteThemeCookie = Cookies.get("theme");

    if (!siteThemeCookie) {
        setThemeCookieTo("dark");
    } else {
        if (siteThemeCookie == "light") {
            setThemeCookieTo("light");
        } else if (siteThemeCookie == "dark") {
            setThemeCookieTo("dark");
        } else {}
    }
}

function setThemeCookieTo(e) {
    let siteThemeState = document.getElementById("toggleTheme");
    if (e == "light") {
        Cookies.set("theme", "light");
        siteThemeState.setAttribute("aria-checked", "false");
        siteThemeState.setAttribute("tooltip", "Dark Mode");
        setThemeTo("light");
    } else if (e == "dark") {
        Cookies.set("theme", "dark");
        siteThemeState.setAttribute("aria-checked", "true");
        siteThemeState.setAttribute("tooltip", "Light Mode");
        setThemeTo("dark");
    } else {}
}

function setThemeTo(e) {
    const siteRoot = document.getElementsByTagName("html")[0];

    if (e == "light") {
        siteRoot.classList.remove("theme-dark");
        siteRoot.classList.add("theme-light");
    } else if (e == "dark") {
        siteRoot.classList.remove("theme-light");
        siteRoot.classList.add("theme-dark");
    } else {}
}

function checkThemeState() {
    let siteThemeState = document.getElementById("toggleTheme").getAttribute("aria-checked");
    if (siteThemeState == "true") {
        setThemeCookieTo("dark");
    } else if (siteThemeState == "false") {
        setThemeCookieTo("light");
    } else {}
}

function siteToggleTheme() {
    checkThemeCookie();

    document.getElementById("toggleTheme").addEventListener("click", () => {
        checkThemeState();
    });
}

ready(() => {
    siteToggleTheme();
});
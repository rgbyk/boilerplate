// ==========================================
// ! Toggle Grid Overlay
// ==========================================

// function setGridOverlayTo(e) {
//     if (e == "true") {
//         document.getElementById("siteGridOverlay").classList.add("d-block");
//         document.getElementById("siteGridOverlay").classList.remove("d-none");
//     } else if (e == "false") {
//         document.getElementById("siteGridOverlay").classList.remove("d-block");
//         document.getElementById("siteGridOverlay").classList.add("d-none");
//     } else {
//         document.getElementById("siteGridOverlay").classList.remove("d-block");
//         document.getElementById("siteGridOverlay").classList.add("d-none");
//     }
// }

// function checkGridCookie() {
//     let siteGridCookie = Cookies.get("grid");

//     if (!siteGridCookie) {
//         setGridCookieTo("false");
//     } else {
//         if (siteGridCookie == "true") {
//             setGridCookieTo("true");
//         } else if (siteGridCookie == "false") {
//             setGridCookieTo("false");
//         } else {}
//     }
// }

// function setGridCookieTo(e) {
//     let siteGridState = document.getElementById("toggleGrid");
//     if (e == "true") {
//         Cookies.set("grid", "true");
//         siteGridState.setAttribute("aria-checked", "true");
//         setGridOverlayTo("true");
//     } else if (e == "false") {
//         Cookies.set("grid", "false");
//         siteGridState.setAttribute("aria-checked", "false");
//         setGridOverlayTo("false");
//     } else {}
// }

// function checkGridState() {
//     let state = document.getElementById("toggleGrid").getAttribute("aria-checked");
//     if (state == "true") {
//         setGridCookieTo("true");
//     } else if (state == "false") {
//         setGridCookieTo("false");
//     } else {}
// }

// function siteToggleGrid() {
//     checkGridCookie();
//     document.getElementById("toggleGrid").addEventListener("click", () => {
//         checkGridState();
//     });
// }

// ready(() => {
//     siteToggleGrid();
// });
const sw = document.getElementById("switch-style"), b = document.body;

if (sw && b) {
    sw.checked = window.localStorage && localStorage.getItem("theme") === "theme-dark" || !window.localStorage;

    b.classList.toggle("theme-dark", sw.checked)
    b.classList.toggle("theme-light", !sw.checked)

    sw.addEventListener("change", function () {
        b.classList.toggle("theme-dark", this.checked)
        b.classList.toggle("theme-light", !this.checked)

        if (window.localStorage) {
            localStorage.setItem("theme", this.checked ? "theme-dark" : "theme-light");
        }
    })
}

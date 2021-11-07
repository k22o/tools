document.addEventListener('DOMContentLoaded', function () {
    const element = document.querySelector('.animateStrings');
    const str = element.innerHTML.trim().split("");

    let concatStr = str.reduce((result, current) => {
        current = current.replace(/\s+/, '&nbsp;');
        return `${result}<span class="char">${current}</span>`;
    }, "");

    element.innerHTML = concatStr;
});

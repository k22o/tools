
const options = {
    rootMargin: "0px 0px",
    threshold: 0
};

const sample1 = document.querySelector('#colorBlock');
const callback1 = function(entries, observer) {
    entries.forEach(entry => {
        if(entry.isIntersecting) {
            console.log("colorBlock into this window");
        }
        else {
            console.log("colorBlock outof this window");
        }
    });
}
const observer1 = new IntersectionObserver(callback1, options);
observer1.observe(sample1);

/* ----------------------------------------------- */

const sample2 = document.querySelector('.lazy');
const callback2 = function(entries, observer) {
    entries.forEach(entry => {
        if(entry.isIntersecting) {
            target = entry.target;
            if(target.dataset.hasOwnProperty('src')) {
                target.setAttribute('src',target.dataset.src);
                observer.unobserve(target);
            }
        }
    });
}
const observer2 = new IntersectionObserver(callback2, options);
observer2.observe(sample2);

/* ----------------------------------------------- */


const showStringFunction = function (element) {
    console.log(element)
    const str = element.innerHTML.trim().split("");

    let concatStr = str.reduce((result, current) => {
        current = current.replace(/\s+/, '&nbsp;');
        return `${result}<span class="char">${current}</span>`;
    }, "");

    element.innerHTML = concatStr;
}

const options3 = {
    rootMargin: "500px 0px",
    threshold: 0
};

const sample3 = document.querySelectorAll('.animateStrings');
const callback3 = function(entries, observer) {
    entries.forEach(entry => {
        if(entry.isIntersecting) {
            target = entry.target;
            showStringFunction(target);
            target.classList.add('isShow');
            observer.unobserve(target);
        }
    });
}

const observer3 = new IntersectionObserver(callback3, options3);
console.log(sample3[0]);
sample3.forEach (element => {
    observer3.observe(element);
})

var Profession = (function () {
    function Profession(name, prof) {
        this.name = name;
        this.prof = prof;
    }
    return Profession;
}());
var user = {
    name: "Tom",
    id: 1
};
var prof = new Profession("Mary", "scientist");
console.log(user);
console.log(prof);
var se = "spring";
console.log(se);
var arr = ["a", "b", "c"];
console.log(arr);

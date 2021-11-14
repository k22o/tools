class Worker {
    constructor(age, name) {
        this.age = age;
        this.name = name;
    }
    disp() {
        console.log("age: " + this.age);
        console.log("name: " + this.name);
    }
}

class Engineer extends Worker {
    constructor(age, name, major) {
        super(age, name);
        this.major = major;
    }
    disp() {
        super.disp();
        console.log("major: " + this.major);
    }
}


let person1 = new Worker(20, "Yamada");
person1.disp();
let person2 = new Engineer(25, "Tanaka" ,"c++");
person2.disp();

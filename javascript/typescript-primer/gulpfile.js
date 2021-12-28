const { dest, src, task} = require("gulp");
const ts = require("gulp-typescript");
const tsProject = ts.createProject("./tsconfig.json");

function buildTs() {
    return src('./src/**.ts')
    .pipe(tsProject())
    .pipe(dest("./dist"));
}

exports.default = buildTs;
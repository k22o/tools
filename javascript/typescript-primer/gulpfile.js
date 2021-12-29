const { dest, src, series, watch} = require("gulp");
const ts = require("gulp-typescript");
const tsProject = ts.createProject("./tsconfig.json");

const srcFiles = './src/*.ts';

function buildTs() {
    return src(srcFiles)
    .pipe(tsProject())
    .pipe(dest("./dist"));
};

exports.default = buildTs;

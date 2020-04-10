const {packageOne} = require('lerna-sandbox-package-one');

function packageTwo() {
    return `I am an awesome package (2) using another package (1): ${packageOne()}`;
}

exports.packageTwo = packageTwo;

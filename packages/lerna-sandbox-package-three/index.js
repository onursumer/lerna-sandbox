const {packageTwo} = require('lerna-sandbox-package-two');
const {packageFour} = require('lerna-sandbox-package-four');

function packageThree() {
    return `I am an awesome package (3) using other packages (2,4): ${packageTwo()} && ${packageFour()}`;
}

console.log(packageThree());
console.log("Updated!");

exports.packageThree = packageThree;

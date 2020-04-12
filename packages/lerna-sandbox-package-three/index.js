const {packageTwo} = require('lerna-sandbox-package-two');
const {packageFour} = require('lerna-sandbox-package-four');

function packageThree() {
    return `I am an awesome package (3) using other packages (2,4): ${packageTwo()} && ${packageFour()}`;
}
function someExtraStuff() {
    return 'Hello darkness my old friend!';
}


console.log(packageThree());

exports.packageThree = packageThree;

const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

Given('I know what days is today', function () {
    console.log('I know the day');
});

// Given('Today is {string}',
// Given(/^Today is '(.+)'$/,
Given(/^Today is '(Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday)'$/,
    function (today) {
        this.today = today;
    }
);

//When('Someone asks me whether it\'s {string}',
When(/^Someone asks me whether it's '(.+)'$/,
    function (askingDay) {
        this.actualAnswer = isItDay(this.today, askingDay);
    }
);

Then('I should be told Nope',
    function () {
        assert.strictEqual(this.actualAnswer, 'Nope');
    }
);

Then('I should be told Yes',
    function () {
        assert.strictEqual(this.actualAnswer, 'Yes');
    }
);

// Then('I should be told {string}', // -> It cannot be used!
// Then(/^I should be told (.+)$/,
//     function (answer) {
//         assert.strictEqual(this.actualAnswer, answer);
//     }
// );

function isItDay(today, askingDay) {
    if (today.localeCompare(askingDay) == 0) {
        return 'Yes';
    } else {
        return 'Nope';
    }
}

const {After, AfterAll, Before, BeforeAll} = require('@cucumber/cucumber');

BeforeAll(function () {
    console.log('\n= Starting Tests =');
});

Before(function (scenario) {
    console.log('\n == Running:', scenario.pickle.name);
});

After(function (scenario) {
    console.log('\n == Result:', scenario.result?.status);
});

AfterAll(function () {
    console.log('\n= Test done =');
});

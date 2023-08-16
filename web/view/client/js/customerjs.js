function Validator(options) {

    var selectorRules = {};

    function validate(inputElement, rule) {
        var errorMessage =rule.test(inputElement.value)
        var errorElement = inputElement.parentElement.querySelector(options.erorrSelector);
        var rules = selectorRules[rule.selector];
        
//        for (var i = 0; i < rules.length; ++i) {
//            errorMessage = rules[i];
//            if (errorMessage) break;
//        }
        if (errorMessage) {
            errorElement.innerText = errorMessage;
        } else {
            errorElement.innerText = '';
        }
        return !errorMessage;
    }

    var formElemetnt = document.querySelector(options.form);
    if (formElemetnt) {
        
        formElemetnt.onsubmit = function (e){
            e.preventDefault();
            
            var isFormValid = true;
            
            options.rules.forEach(function (rule) {
                var inputElement = formElemetnt.querySelector(rule.selector);
                var isValid = validate(inputElement, rule);
                if(!isValid){
                    isFormValid = false;
                }
            });
            if(isFormValid){
                formElemetnt.submit();
            }
        }
        options.rules.forEach(function (rule) {
            
//            
            if (Array.isArray(selectorRules[rule.selector])){
                selectorRules[rule.selector].push(rule.test);
            }else{
                selectorRules[rule.selector] = rule.test;
            }
            
            var inputElement = formElemetnt.querySelector(rule.selector);
            

            if (inputElement) {
                inputElement.onblur = function () {
                    validate(inputElement, rule);
                }
                inputElement.oninput = function (){
                    var errorElement = inputElement.parentElement.querySelector(options.erorrSelector);
                    errorElement.innerText = '';
                }
            }

        });
    }

}
Validator.isRequired = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            return value.trim() ? undefined : message;
        }
    };
}

Validator.minLength = function (selector,min,message) {
    return {
        selector: selector,
        test: function (value) {
            return value.length >= min ? undefined : message;
        }
    };
}

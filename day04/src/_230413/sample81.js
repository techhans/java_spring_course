var obj = {
    vals: [1, 2, 3],
    logValues: function(v, i){
        console.log(this, v, i);
    }
};
obj.logValues(1,2);
[4,5,6].forEach(obj.logValues);
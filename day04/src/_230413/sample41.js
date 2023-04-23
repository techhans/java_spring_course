let object = {
    uname: 'Kim',
    age : 30,
    print : function(){
        console.log(`그의 이름은 ${this.uname}이다`);
    }
};
object.print();
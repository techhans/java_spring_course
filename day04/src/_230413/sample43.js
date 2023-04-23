class Product{
    constructor(uname, price){
        this.uname = uname;
        this.price =price;
    }
    print(){
        console.log(`${this.name}가격은 ${this.price}원이다.`)
    }
}
let products = [
    new Product('사과',1000),
    new Product('토마토',2000),
    new Product('오렌지',3000),
    new Product('감자',4000),
];
for(let product of products){
    product.print();
}
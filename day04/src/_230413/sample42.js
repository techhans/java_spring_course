class Product{
    constructor(uname, price){
        this.uname = uname;
        this.price =price;
    }

}
let product = new Product("사과",1000);
console.log(product.uname);
console.log(product.price);
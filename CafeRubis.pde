//Jack Byrne C16450832
int y = 50;

void setup(){
  size(800,600);
  background(200);
  strokeWeight(3);
  stroke(0);
  line(width/2,50,width/2,550);
  rect(420,50,330,500);
  loadData();
  for(int i = 0; i < 7; i++){
    rect(50,y,330,100);
    y = y + 65;
  }
}

void Draw(){
  printProducts();
}

ArrayList<Product> products = new ArrayList<Product>(); 
ArrayList<Product> bill = new ArrayList<Product>(); 

void loadData(){
  Table table = loadTable("cafeData.csv", "header");
  
  for(TableRow r:table.rows()){
    Product product = new Product(r);
    
    products.add(product);
  }
}

void printProducts(){
  for(int i = 0 ; i < products.size() ; i ++){
    Product r = products.get(i);
    //println(r.Name); This for Some reason will not recognise the variable
  }
}
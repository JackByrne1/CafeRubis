//Jack Byrne C16450832

void setup(){
  size(800,600);
  loadData();
}

void Draw(){
  printProducts();
}

ArrayList<Product> products = new ArrayList<Product>(); 
ArrayList<Product> bill = new ArrayList<Product>(); 

void loadData(){
  Table table = loadTable("cafeData.csv", "header");
  
  for(TableRow r:table.rows())
  {
    Product product = new Product(r);
    
    products.add(product);
  }
}

void printProducts(){
  for(int i = 0 ; i < products.size() ; i ++)
  {
    Product r = products.get(i);
    println(r.Name);
  }
}
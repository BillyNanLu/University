package billy;

public  class  Student
{
   String  name=" ";
   long    number;
   double  height ;
   double  weight ;   
   public String getName(){
       try {
            byte b[]=name.getBytes("utf-8");
            name=new String(b);
            return name;
       } catch(Exception e) {
            return name;
       }        
   }
   public void setName(String newName) {
      name = newName;      
   }
   
   public long getNumber(){
       return  number;
   }
   public void setNumber(long newNumber) {
      number = newNumber;
   }
   
   public double getHeight() {
      return  height;
   }
   public void setHeight(double newHeight) {
      height = newHeight;
   }
   
   public double getWeight() {
      return  weight;
   }
   public void setWeight(double newWeight) {
       weight = newWeight;
   }   
}


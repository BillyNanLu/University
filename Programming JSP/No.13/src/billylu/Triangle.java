package billylu;

public class Triangle {
	double sideA, sideB, sideC;
	double area;
	boolean triangle;
	
	public void setSideA(double a) {
		sideA = a;
	}
	
	public double getSideA() {
		return sideA;
	}
	
	public void setSideB(double b) {
		sideB = b;
	}
	
	public double getSideB() {
		return sideB;
	}
	
	public void setSideC(double c) {
		sideC = c;
	}
	
	public double getSideC() {
		return sideC;
	}
	
	public double getArea() {
		double p = (sideA + sideB + sideC) / 2.0;
		area = Math.sqrt(p*(p-sideA)*(p-sideB)*(p-sideC));
		return area;
	}
	
	public boolean isTrangle() {
		if(sideA<sideB+sideC&&sideB<sideA+sideC&&sideC<sideA+sideB)
			triangle=true;
		else
			triangle=false;
		return triangle;
	}


}

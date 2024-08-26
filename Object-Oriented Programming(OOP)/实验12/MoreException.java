package com.task13;

public class MoreException {
		static void exception(int i){
			try {
				if(i==0) {
					System.out.println("正常");
					return;
				} else if(i==1) {
					int a = 0;
					int b = 100/a;
				} else if(i==2) {
					int dog[] = new int[3];
					dog[3] = 4;
				}
			}catch(ArithmeticException ae) {
				System.out.println("捕获异常" + ae);
			}catch(ArrayIndexOutOfBoundsException aie) {
				System.out.println("捕获异常" + aie);
			}catch(Exception e) {
				System.out.println("捕获异常" + e);
			}finally {
				System.out.println("必须执行的finally");
			}
		}
		public static void main(String[] args) {
			exception(0);
			exception(1);
			exception(2);
			exception(3);
		}
}

package mypackage;

public class GuessNumber {
	int answer = 0, guessNumber = 0, guessCount = 0;
	String result = null;
	public void setAnswer(int n) {
		answer = n;
		guessCount = 0;
	}
	public int getAnswer() {
		return answer;
	}
	public void getGuessNumber(int n) {
		guessNumber = n;
		guessCount++;
		if (guessNumber == answer)
			result = "恭喜，猜对了";
		else if (guessNumber > answer)
			result = "猜大了";
		else if (guessNumber < answer)
			result = "猜小了";
	}
	public int getGuessNumber() {
		return guessNumber;
	}
	public int getGuessCount() {
		return guessCount;
	}
	public String getResult() {
		return result;
	}
	
}

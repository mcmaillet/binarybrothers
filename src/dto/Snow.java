package dto;

public class Snow {
	private long time;
	private int distance;
	private double humidity;
	private double temperature;

	public double getHumidity() {
		return humidity;
	}

	public void setHumidity(double humidity) {
		this.humidity = humidity;
	}

	public double getTemperature() {
		return temperature;
	}

	public void setTemperature(double temperature) {
		this.temperature = temperature;
	}

	public void setTime(long time) {
		this.time = time;
	}

	public void setDistance(int distance) {
		this.distance = distance;
	}

	public long getTime() {
		return this.time;
	}

	public int getDistance() {
		return this.distance;
	}
}
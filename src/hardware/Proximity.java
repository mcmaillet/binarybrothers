package hardware;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import dto.Snow;

public class Proximity {
	private static final String PROXIMITY_ENDPOINT = "http://binarybrothers.azurewebsites.net/api/particle";
	private static CloseableHttpClient _client;
	private static final int topSelect = 30;

	public static List<Snow> getHistoricalSnow() throws ClientProtocolException, IOException {
		List<Snow> allSnow;
		_client = HttpClients.createDefault();
		HttpEntity entity = _client.execute(new HttpGet(PROXIMITY_ENDPOINT + "?number=" + topSelect)).getEntity();
		String result = EntityUtils.toString(entity);
		Type type = new TypeToken<List<Snow>>() {
		}.getType();
		allSnow = new Gson().fromJson(result, type);
		EntityUtils.consume(entity);
		_client.close();

		// if (allSnow.size() > topSelect) {
		// return allSnow.subList(allSnow.size() - (topSelect + 1),
		// allSnow.size() - 1);
		// }
		return allSnow;
	}

	public static List<Snow> getHistoricalSnow(int num) throws ParseException, IOException {
		List<Snow> allSnow;
		_client = HttpClients.createDefault();
		HttpEntity entity = _client.execute(new HttpGet(PROXIMITY_ENDPOINT + "?number=" + num)).getEntity();
		String result = EntityUtils.toString(entity);
		Type type = new TypeToken<List<Snow>>() {
		}.getType();
		allSnow = new Gson().fromJson(result, type);
		EntityUtils.consume(entity);
		_client.close();

		return allSnow;
	}
}
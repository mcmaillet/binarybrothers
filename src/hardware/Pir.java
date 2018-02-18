package hardware;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

public class Pir {
	private static final String PIR_SERVER = "http://binarybrothers.azurewebsites.net/api/test";
	private static CloseableHttpClient _client;

	public static void doGet(HttpServletResponse resp) throws ClientProtocolException, IOException {
		_client = HttpClients.createDefault();
		HttpEntity entity = _client.execute(new HttpGet(PIR_SERVER)).getEntity();
		String result = EntityUtils.toString(entity);
		resp.getWriter().write(result);
		System.out.println(result);
		EntityUtils.consume(entity);
		_client.close();
	}

	public static void doPost(HttpServletResponse resp) throws ClientProtocolException, IOException {
		_client = HttpClients.createDefault();
		HttpPost post = new HttpPost(PIR_SERVER);
		post.addHeader("Content-Type", "application/json");
		String params = "\"YODAWG\"";
		StringEntity entity = new StringEntity(params);
		post.setEntity(entity);
		HttpResponse response = _client.execute(post);
		String result = EntityUtils.toString(response.getEntity());
		resp.getWriter().write(result);
		System.out.println(result);
		EntityUtils.consume(entity);
		_client.close();
	}
}
package asr.proyectoFinal.services;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.ibm.watson.developer_cloud.service.security.IamOptions;
import com.ibm.watson.developer_cloud.text_to_speech.v1.TextToSpeech;
import com.ibm.watson.developer_cloud.text_to_speech.v1.*;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.SynthesizeOptions;
import com.ibm.watson.developer_cloud.text_to_speech.v1.util.WaveUtils;
import com.ibm.watson.developer_cloud.text_to_speech.v1.websocket.BaseSynthesizeCallback;

public class TextoAVoz {
	public static void hablar(String texto) {
		IamOptions options = new IamOptions.Builder().apiKey("gLLPrJpJFvTzzTMzK5E-2e-6BfkSPFLahg_K3pm_MJg-").build();

		TextToSpeech textToSpeech = new TextToSpeech(options);
		textToSpeech.setEndPoint("https://stream-fra.watsonplatform.net/text-to-speech/api");

		try {
			SynthesizeOptions synthesizeOptions = new SynthesizeOptions
					.Builder()
					.text(texto)
					.accept("audio/wav")
					.voice("es-ES_LauraVoice")
					.build();

			InputStream inputStream = textToSpeech.synthesize(synthesizeOptions).execute();//.getResult();
			InputStream in = WaveUtils.reWriteWaveHeader(inputStream);

			OutputStream out = new FileOutputStream("hello_world.wav");
			byte[] buffer = new byte[1024];
			int length;
			while ((length = in.read(buffer)) > 0) {
				out.write(buffer, 0, length);
			}

			out.close();
			in.close();
			inputStream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return ;
	}
}

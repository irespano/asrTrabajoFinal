package asr.proyectoFinal.services;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;

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
	public static void hablar(String texto,HttpServletResponse response) {
		IamOptions options = new IamOptions.Builder().apiKey("gLLPrJpJFvTzzTMzK5E-2e-6BfkSPFLahg_K3pm_MJg-").build();

		TextToSpeech textToSpeech = new TextToSpeech(options);
		textToSpeech.setEndPoint("https://stream-fra.watsonplatform.net/text-to-speech/api");

		try {
			SynthesizeOptions synthesizeOptions = new SynthesizeOptions
					.Builder()
					.text(texto)
					.accept("audio/webm")
					.voice("es-ES_LauraVoice")
					.build();

			InputStream inputStream = textToSpeech.synthesize(synthesizeOptions).execute();//.getResult();
			//InputStream in = WaveUtils.reWriteWaveHeader(inputStream);
			response.reset();
			OutputStream out = response.getOutputStream();
			byte[] buffer = new byte[1024];
			int length;
			while ((length = inputStream.read(buffer)) > 0) {
				out.write(buffer, 0, length);
			}
			out.close();
			//in.close();
			inputStream.close();
			
//			try {
//				
//	            
//	            // Se obtiene un Clip de sonido
//	            Clip sonido = AudioSystem.getClip();
//	            System.out.println("Entrando...");
//	            
//	            // Se carga con un fichero wav
//	            sonido.open(AudioSystem.getAudioInputStream(new File("C:/Users/IRENE/Downloads/eclipse-jee-neon-2-win32-x86_64/eclipse/hello_world.wav")));
//	            System.out.println("Entrando2...");
//	            
//	            // Comienza la reproducción
//	            sonido.start();
//	            System.out.println("Entrando3...");
//	            
//	            // Espera mientras se esté reproduciendo.
//	            while (sonido.isRunning())
//	                Thread.sleep(1000);
//	            System.out.println("Entrando4...");
//	            
//	            // Se cierra el clip.
//	            sonido.close();
//	            System.out.println("Saliendo...");
//	        } catch (Exception e) {
//	            System.out.println("" + e);
//	        }
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}

		return ;
	}
}

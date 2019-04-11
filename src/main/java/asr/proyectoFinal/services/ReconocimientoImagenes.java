package asr.proyectoFinal.services;

import com.ibm.watson.developer_cloud.visual_recognition.v3.model.ClassifiedImages;
import com.ibm.watson.developer_cloud.visual_recognition.v3.model.ClassifyOptions;
import com.ibm.watson.developer_cloud.service.security.IamOptions;
import com.ibm.watson.developer_cloud.visual_recognition.v3.VisualRecognition;
import javax.servlet.http.Part;

public class ReconocimientoImagenes{
	
	public static ClassifiedImages reconocer(String image){
		IamOptions options = new IamOptions.Builder().apiKey("Z4Ka-eIEnEnOn1VwMR56cPSKjNOno6sAQHcoIdepQwrc").build();
	
		VisualRecognition visualRecognition = new VisualRecognition("2019-04-11", options);
	
		ClassifyOptions classifyOptions = new ClassifyOptions.Builder()
				.url(image)
				.build();
		ClassifiedImages result = visualRecognition.classify(classifyOptions).execute();
		System.out.println(result);
		return result;
	}

}

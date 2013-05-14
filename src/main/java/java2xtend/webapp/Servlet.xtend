package java2xtend.webapp

import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse
import javax.servlet.ServletException
import java.io.IOException
import org.eclipse.xtend.java2xtend.Java2Xtend
import static org.apache.commons.io.IOUtils.*

class Servlet extends HttpServlet {
	
	override protected doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		val conv = new Java2Xtend
		val in = req.inputStream
		try {
			val xtend = conv.toXtend(toString(in))
			resp.contentType = 'text/plain'
			resp.outputStream.print(xtend);		
		}finally{
			closeQuietly(in);
		}
	}	
}
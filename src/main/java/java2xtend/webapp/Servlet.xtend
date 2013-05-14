package java2xtend.webapp

import java.io.IOException
import java.util.logging.Logger
import javax.servlet.ServletException
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse
import org.eclipse.xtend.java2xtend.Java2Xtend

import static org.apache.commons.io.IOUtils.*

class Servlet extends HttpServlet {
	private static val log = Logger::getLogger(typeof(Servlet).name)
	
	override protected doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		val conv = new Java2Xtend
		val in = req.inputStream
		try {
			val java = toString(in)
			log.info(java)
			val xtend = conv.toXtend(java)
			log.info(xtend)
			resp.contentType = 'text/plain'
			resp.outputStream.print(xtend);		
		}finally{
			closeQuietly(in);
		}
	}	
}
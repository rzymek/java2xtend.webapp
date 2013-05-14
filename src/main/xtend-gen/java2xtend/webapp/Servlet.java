package java2xtend.webapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.IOUtils;
import org.eclipse.xtend.java2xtend.Java2Xtend;

@SuppressWarnings("all")
public class Servlet extends HttpServlet {
  protected void doPost(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException, IOException {
    Java2Xtend _java2Xtend = new Java2Xtend();
    final Java2Xtend conv = _java2Xtend;
    final ServletInputStream in = req.getInputStream();
    try {
      String _string = IOUtils.toString(in);
      final String xtend = conv.toXtend(_string);
      resp.setContentType("text/plain");
      ServletOutputStream _outputStream = resp.getOutputStream();
      _outputStream.print(xtend);
    } finally {
      IOUtils.closeQuietly(in);
    }
  }
}

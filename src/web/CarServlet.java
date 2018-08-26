package web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import dao.CarInMemoryDAO;
import entity.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

@WebServlet(value = "/CarServlet")
public class CarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    CarInMemoryDAO dao=new CarInMemoryDAO();
    PrintWriter out;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        out=response.getWriter();
        String action=request.getParameter("action");
        if(action.equals("list")){
            String result="[";
            for(Car c:dao.listAll()){
                result+=toJson(new Car(c.getId(),c.getName(),c.getPrice(),c.getModel(),c.getDescribe()));
                result+=",";
            }
            if(result.substring(result.length()-1, result.length()).equals(",")){
                result=result.substring(0,result.length()-1);
            }
            result+="]";
            response.getWriter().println(result);
        }
        else if(action.equals("add")){
            add(request,response);
        }
        else if(action.equals("delete")){
            delete(request,response);
        }
        else if(action.equals("update")){
            update(request,response);
        }
    }
    public void add(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        float price=Float.parseFloat(request.getParameter("price"));
        String model=request.getParameter("model");
        String describe=request.getParameter("describe");
        dao.add(new Car(id,name,price,model,describe));
        response.getWriter().print("{\"msg\":\"添加成功\"}");
    }
    public void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        dao.delete(id);
        response.getWriter().println("{\"msg\":\"删除成功\"}");
    }
    public void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        float price=Float.parseFloat(request.getParameter("price"));
        String model=request.getParameter("model");
        String describe=request.getParameter("describe");
        dao.update(new Car(id,name,price,model,describe));
        response.getWriter().println("{\"msg\":\"修改成功\"}");
    }
    public static String toJson(Object obj) {
        ObjectMapper mapper = new ObjectMapper();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd HH:mm:ss");
        mapper.setDateFormat(sdf);

        String result = null;
        try {
            result = mapper.writeValueAsString(obj);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return result;
    }
}

<%@page import="beans.Alumno"%>

    <%!
      Alumno alum[]=new Alumno[10];
    %>

        <%
            alum[0]=new Alumno("57201000190", "Rogelio",       "Pascualeño", 8, 9, 8);
            alum[1]=new Alumno("57201000191", "Jose de jesus", "Navarrete",  9, 9, 9);
            alum[2]=new Alumno("57201000192", "Gabriela",      "Espinoza",   7, 8, 8);
            alum[3]=new Alumno("57201000193", "Adrian",        "Gil",        6, 10, 7);
            alum[4]=new Alumno("57201000194", "Laura",         "Cuevas",     6, 10, 10);
            alum[5]=new Alumno("57201000195", "karla",         "Cruz",       10, 9, 9);
            alum[6]=new Alumno("57201000196", "Isabel",        "Dominguez",  10, 10, 8);
            alum[7]=new Alumno("57201000197", "Yosahandy",     "Chepillo",   10, 8, 8);
            alum[8]=new Alumno("57201000198", "Antonieta",     "alejo",      10, 10, 10);
            alum[9]=new Alumno("57201000199", "Rodrigo",       "Lara",       7, 6, 8);
        %>

  <!DOCTYPE html>
    <title>Objetos Java</title>
    <link rel="stylesheet" href="stylus.css">
    
     <body>
         <div id="container">
         <h2>Version1.- Expreciones Clase Java</h2>
           
      <table  id="tabla"  border="0">
           
            <thead>
                <tr>
                    <th>MATRICULA</th>
                    <th>NOMBRE</th>
                    <th>APELLIDO</th>
                    <th>CVJ</th>
                    <th>DWI</th>
                    <th>ECDB</th>
                    <th>PROM</th>
                </tr>
            </thead>
            <% for (int i=0;i<10;i++){%>
            <tbody>
                <tr>
                    <td><%=alum[i].getMatricula()%></td>
                    <td><%=alum[i].getNombre()%></td> 
                    <td><%=alum[i].getApellido()%> </td> 
                    <td><%=alum[i].getCjv()%></td>
                    <td><%=alum[i].getDwi()%></td>
                    <td><%=alum[i].getEcbd()%></td>
                    <td><%=alum[i].Prom()%></td>
                   
                </tr>
                
              <% } %>
               
            </tbody>
        </table> 
              

                 <h2>Version2.- Scriptlets Clase Java</h2> 
                <% 
                    out.println("<table>"
                               
                               + "<tr>"
                               + "<th>MATRICULA</th>"
                               + "<th>NOMBRE</th>"
                               + "<th>APELLIDO</th>"
                               + "<th>CJV</th>"
                               + "<th>DWI</th>"
                               + "<th>ACBD</th>"
                               + "<th>PROM</th>"
                               + "</tr>");
                  
               
                    for (int i=0;i<10;i++) 
                   
                       out.println("<tr>"
                            +"<td>"+alum[i].getMatricula() +"</td>"
                            +"<td>"+alum[i].getNombre()    +"</td>" 
                            +"<td>"+alum[i].getApellido() +"</td>"
                            +"<td>"+alum[i].getCjv()       +"</td>"
                            +"<td>"+alum[i].getDwi()       +"</td>"
                            +"<td>"+alum[i].getEcbd()      +"</td>"
                            +"<td>"+alum[i].Prom() +"</td>"
                         
                            +"</tr>");
                  out.println("</table>"); 
              %>
         </div>
      </body>
</html>

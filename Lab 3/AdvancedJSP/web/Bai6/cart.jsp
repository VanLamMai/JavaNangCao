<%-- 
    Document   : cart
    Created on : May 29, 2022, 2:54:18 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>
    </head>
    <body>
        <%
            java.util.Vector v
                    = (java.util.Vector) session.getAttribute("array");
            if (v == null) {
                v = new java.util.Vector();
            }
            String i = null;
            String submit = request.getParameter("submit");

            if (submit == null) {
                submit = "";
            }
            if (submit.equals("add") || submit.equals("")) {
                v.addElement(request.getParameter("item"));
        %>
        <br> Your cart Contains :
        <ol>
            <%
                String[] items = new String[v.size()];
                v.copyInto(items);
                for (int ix = 1; ix < items.length; ix++) {
            %>
            <li> <% out.print(items[ix]);
                }
                %>
        </ol>

        <%
            }
            if (submit.equals("remove")) {
                String removeitem = request.getParameter("item");
                if (v.contains(removeitem)) {
                    v.removeElement(removeitem);
                } else {
                    out.println("element not found in vector");
                }

        %>
        <br> Your cart Contains :
        <ol>
            <%    String[] items = new String[v.size()];
                v.copyInto(items);
                for (int ix = 1; ix < items.length; ix++) {
            %>
            <li> <% out.print(items[ix]);
                }
                %>
        </ol>

        <%
            }
            session.setAttribute("array", v);
        %>

        </font>
        <hr>

        <font size = 3>
        <form type=POST>
            <BR>
            Please Select the item to add or remove:
            <br>
            Add / Remove Item:
            <select name="item">
                <option>Floppy
                <option>CD
                <option>Keyboard
            </select>
            <br> <br>
            <input type=submit name="submit" value="add">
            <input type=submit name="submit" value="remove">

        </form>
        </font>

    </body>
</html>

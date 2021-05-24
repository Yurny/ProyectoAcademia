/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.VehiculoDAO;
import ModeloVO.VehiculoVO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Julian
 */
@WebServlet(name = "VehiculoControlador", urlPatterns = {"/Vehiculo"})
public class VehiculoControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String vehPlaca = request.getParameter("txtPlaca");
        String datId = request.getParameter("txtDatos");
        String catId = request.getParameter("txtCategoria");
        String vehModelo = request.getParameter("txtModelo");
        String vehMarca = request.getParameter("txtMarca");
        String vehEstado = request.getParameter("txtEstado");
        String vehPrecio = request.getParameter("txtPrecio");

        VehiculoVO vehVO = new VehiculoVO(vehPlaca, datId, catId, vehModelo, vehMarca, vehEstado, vehPrecio);
        VehiculoDAO vehDAO = new VehiculoDAO(vehVO);

        switch (opcion) {

            case 1://Agregar Registro
                if (vehDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El vehiculo se registro corectamente");
                } else {
                    request.setAttribute("mensajeError", "El vehiculo no se registro corectamente");
                }
                request.getRequestDispatcher("registrarVehiculo.jsp").forward(request, response);
                break;
            case 2://Actualizar Registro
                if (vehDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "El vehiculo se actualizo corectamente");
                } else {
                    request.setAttribute("mensajeError", "El vehiculo no se actualizo corectamente");
                }
                request.getRequestDispatcher("actualizarVehiculo.jsp").forward(request, response);
                break;
            case 3:
                vehVO = vehDAO.consultarPlaca(vehPlaca);
                if (vehVO != null) {
                    request.setAttribute("vehiculo", vehVO);
                    request.getRequestDispatcher("actualizarVehiculo.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El vehiculo no existe");
                    request.getRequestDispatcher("consultarVehiculo.jsp").forward(request, response);
                }
                break;
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

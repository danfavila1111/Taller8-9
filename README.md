# Taller8-9



Se han desarrollado varios servlets que se encargan de redirigir solicitudes y enviarlas a páginas específicas. Estos servlets incluyen el LoginForwardingServlet, CategoryForwardingServlet, ProductForwardingServlet, RedirectionSenaServlet y RegisterForwardingServlet. Cada uno de estos servlets se encarga de redirigir las solicitudes GET utilizando RequestDispatcher o sendRedirect hacia páginas específicas.

Además, se han creado archivos JSP adicionales, como header.jsp y footer.jsp, que contienen el encabezado y pie de página reutilizables. Se ha modificado el archivo registerProduct.jsp para que incluya el encabezado y pie de página mediante la inclusión de los archivos header.jsp y footer.jsp.

La inclusión de archivos JSP reutilizables tiene varios beneficios. En primer lugar, permite mantener un diseño consistente en todas las páginas del sitio. Además, facilita la actualización y el mantenimiento del código, ya que los cambios realizados en los archivos JSP reutilizables se reflejan automáticamente en todas las páginas donde se incluyen. Por último, evita la repetición de código en múltiples archivos, lo que mejora la eficiencia del desarrollo y reduce la posibilidad de errores.

<!DOCTYPE html>
<html lang="es" dir="ltr">

<head>
    <meta charset="utf-8">
    <title> Ventas Patiyotl</title>
    <link rel="stylesheet" href="CSS/estilo.css">


    <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
</head>
<body bgcolor="#d0d8e5">
    <?php
      include("Barras.php");
        ?>
        <div class="Ventas">

                <form class="example" action="#">
                    <input type="text" placeholder="Buscar (numero de venta)..." name="search">
                    <button type="submit"><i class="	fa fa-search"></i></button> &emsp;&emsp;&emsp;&emsp;
                    <select class="Tipo-ventas" name=""><option>Todas mis ventas</option><option>Realizadas</option><option>Ventas Pendientes</option>
           </select> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <input type="button" name="" value="Modificar">
                </form>

        </div>
        <table class="items-hp" border=".5" align-items="center">
            <tr>
                <td>No.venta</td>
                <td>Direccion</td>
                <td>Fecha</td>
                <td>Hora</td>
                <td>Costo</td>
                <td>productos</td>
                <td>Estatus</td>
                <td>Modificar</td>
            </tr>
            <script type="text/javascript">
                for (o = 0; o < 19; o++) {
                    document.write('<tr>')
                    for (i = 0; i < 7; i++) {
                        document.write('<td></td>')
                    }
                    document.write('<td> <select class="Tipo-ventas" name=""><option>Realizada</option><option>Pendiente</option></select>  </td>')
                }
            </script>
        </table>
</body>
</html>

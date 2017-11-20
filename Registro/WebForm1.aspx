<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Registro.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/StyleSheet.css">
    
    <title>Registro</title>

</head>
<body>
    <h1>Signup</h1>
    <form runat="server">
        

        <section>
            <fieldset>
                <label for="name">Nombre</label>
                <input type="text" name="Nombre" id="name">
                <div class="tooltip">
                    <span class="ptext">Solo Letras</span>
                </div>
            </fieldset>

            <fieldset>
                <label for="Apellido">Apellido</label>
                <input type="text" name="Apellido" id="Apellido">
                <div class="tooltip">
                    <span class="ptext">Solo Letras</span>
                </div>
            </fieldset>

            <fieldset>
                <label for="email">Email</label>
                <input name="Email" id="email" type="email">
                <div class="tooltip">
                    <span class="ptext">Introduce tu email</span>
                </div>
            </fieldset>

            <fieldset>
                <label for="zip">Zip-code</label>
                <input type="text" name="zip" title="Solo Numeros sin espacios " pattern="^(0|[1-9][0-9]*)$" id="zip">
                <div class="tooltip">
                    <span class="ptext">Introduce tu numero postal</span>
                </div>
            </fieldset>

            <fieldset>
                <label for="Pais">Pais</label>
                <select name="Pais" id="Pais">
                    <option value="Colombia">Colombia</option>
                    <option value="Argentina">Argentina</option>
                    <option value="Chile">Chile</option>
                    <option value="Uruguay">Uruguay</option>
                    <option value="Francia">Francia</option>
                    <option value="Dinamarca">Dinamarca</option>
                </select>
                <div class="tooltip">
                    <span class="ptext">Selecciona tu Pais</span>
                </div>

            </fieldset>

            <fieldset>
                <label for="pass">Password</label>
                <input type="password" id="pass">
                <div class="tooltip">
                    <span class="ptext">Introduce tu Contraseña</span>
                </div>
            </fieldset>
            <details>
                <summary>Genero</summary>

                <fieldset style="margin-left:0px;">
                    <label for="men">Hombre</label>
                    <input type="radio" id="men" name="Sexo" value="hombre">
                </fieldset>
                <fieldset style="margin-left:1px;">
                    <label for="women">Mujer</label>
                    <input type="radio" id="women" name="Sexo" value="mujer">
                </fieldset>

            </details>

            <footer>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />  
            </footer>
        </section>

        
             
        <p id="DataText" runat="server"></p> 
</form>
    
</body>
</html>

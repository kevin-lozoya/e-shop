{include file="header.tpl"}

<div id="cuerpo" class="container">
  <div class="titulo mb-4">
    <h2>Panel de Usuario</h2>
  </div>
  <div class="row">
    <div class="col-lg-3">
      {{include file="menu_usuario.tpl"}}
    </div>
    <div class="col-lg-9 mt-3 mt-lg-0">
      <h3>Datos personales</h3>
      
      <div class="form-row">
        <div class="form-group col-md-6">
          <label for="nombre">Nombre de Usuario</label>
          <input type="text" class="form-control-plaintext" readonly="readonly" id="nombre" value="{$usuario.nick}">
        </div>
        <div class="form-group col-md-6">
          <label for="email">Correo Electrónico</label>
          <input type="email" class="form-control-plaintext" id="email" readonly="readonly" value="{$usuario.email}">
        </div>  
      </div>
      <hr>
      <h3>Datos de envío</h3>
      <form action="/db/usuario/cambiardireccion.php" method="post">
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="fullname">Nombre completo</label>
            <input type="text" name="fullname" class="form-control" id="fullname" value="{$usuario.fullname}">
          </div>
          <div class="form-group col-md-6">
            <label for="direccion">Dirección</label>
            <input type="text" name="direccion" class="form-control" id="direccion" value="{$usuario.direccion}">
          </div>
        </div>
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="ciudad">Ciudad</label>
            <input type="text" name="ciudad" class="form-control" id="ciudad" value="{$usuario.ciudad}">
          </div>
          <div class="form-group col-md-4">
            <label for="provincia">Provincia</label>
            <input type="text" name="provincia" class="form-control" id="provincia" value="{$usuario.provincia}">
          </div>
          <div class="form-group col-md-2">
            <label for="cp">CP</label>
            <input type="text" name="cp" class="form-control" id="cp" value="{$usuario.cp}">
          </div>
        </div>
        <button type="submit" class="btn btn-tienda">Modificar</button>
      </form>
    </div>
  </div>
</div>

{include file="footer.tpl"}
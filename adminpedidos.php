<?php
include_once('lib/funciones.php');
include_once('models/pedido.php');

session_start();

if (!isset($_SESSION['usuario'])) {
  header('Location: index.php');
  exit;
}

// Si el usuario no pertenece al grupo 'administrador'
if ($_SESSION['usuario']['id_grupo'] !== '1') {
  header('Location: usuario.php');
  exit;
}

$plantilla = smarty();

$plantilla->assign('pedidos', $conPedido->todos());
$plantilla->display('adminpedidos.tpl');
?>
<?php
$mysql = new mysqli('internet', 'root', '', 'provider');
if (!$mysql) {
    error_log('Ошибка соединения: ' . $mysqli->connect_errno);
}
$mysql->set_charset("utf8");
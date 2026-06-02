```php
<?php

require 'config.php';

$sql = "SELECT * FROM logs ORDER BY id DESC LIMIT 20";
$stmt = $cnx->prepare($sql);
$stmt->execute();

$logs = $stmt->fetchAll(PDO::FETCH_ASSOC);

foreach ($logs as $log) {
    echo "
    <tr>
        <td>{$log['id']}</td>
        <td>{$log['endpoint']}</td>
        <td>{$log['method']}</td>
        <td>{$log['status']}</td>
        <td>{$log['latency']} ms</td>
        <td>{$log['created_at']}</td>
    </tr>
    ";
}
?>
```

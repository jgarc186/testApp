<?php

namespace App\Printfull;

use PDO;

class Model
{
    public static function pdo()
    {
        return new PDO(
            'mysql:dbname=test_schema;host=127.0.0.1',
            'root',
            ''
        );
    }
}

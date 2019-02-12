<?php

namespace App\Printfull;

use PDO;
use App\Printfull\Model;

class User extends Model
{
    public static function setUser(string $userName)
    {
        $pdo = parent::pdo();
        $statement = $pdo->prepare("INSERT INTO users (name, created_at) VALUES (:name, NOW())");
        $statement->bindParam(':name', $userName);
        $statement->execute();
        $id = $pdo->lastInsertId();
        return $id;
    }

    public static function getUser(int $userId)
    {
        return parent::pdo()->query('SELECT name FROM users WHERE id ='.$userId)->fetch();
    }
}

<?php

namespace App\Printfull\Http\controllers;

use App\Printfull\User;
use App\Printfull\Question;

class UsersController
{
    public static function store(string $userName)
    {
        $userId = User::setUser($userName);

        return $userId;
    }

    public static function show(int $userId)
    {
        return User::getUser($userId);
    }
}

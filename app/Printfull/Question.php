<?php

namespace App\Printfull;

use App\Printfull\Model;

class Question extends Model
{
    public static function getTestQuestion(int $testId)
    {
        $statement = parent::pdo()->prepare('SELECT a.answer, a.points FROM answers_per_tests as a WHERE a.question_id ='.$testId);
        $statement->execute();
        return $statement->fetchAll();
    }

    public static function getNextTestQuestion($testId, $questionId)
    {
        $query = 'SELECT a.answer, a.points FROM answers_per_tests as a WHERE test_id = '.$testId.' AND a.question_id ='.$questionId;
        $statement = parent::pdo()->prepare($query);
        $statement->execute();
        return $statement->fetchAll();
    }

    public static function getQuestionTitleAndId(int $testId)
    {
        return parent::pdo()->query('SELECT q.question, q.id FROM questions_per_tests as q WHERE q.id ='.$testId)->fetch();
    }

    public static function save(int $userId, int $test_id, int $questionId, ?int $points)
    {
        parent::pdo()->query("INSERT INTO test_per_users (user_id, test_id, question_id, points, created_at) VALUES ($userId, $test_id, $questionId, $points, NOW())");
    }

    public static function totalScore(int $userId)
    {
        return parent::pdo()->query("SELECT SUM(`points`) FROM test_per_users WHERE user_id = $userId")->fetch();
    }

    public static function countQuestions(int $testId)
    {
        return parent::pdo()->query("SELECT COUNT(id) AS questions FROM questions_per_tests WHERE test_id = $testId")->fetch();
    }
}

<?php

namespace App\Printfull\Http\controllers;

use App\Printfull\Question;

class QuestionsController
{
    public static function showQuestions(int $testId)
    {
        return Question::getTestQuestion($testId);
    }

    public static function nextQuestions(int $testId, int $questionId)
    {
        return Question::getNextTestQuestion($testId, $questionId);
    }

    public static function showTitleAndId(int $testId)
    {
        return Question::getQuestionTitleAndId($testId);
    }

    public static function storeScore(int $userId, int $test_id, int $questionId, ?int$points)
    {
        Question::save($userId, $test_id, $questionId, $points);
    }

    public static function getScore(int $userId)
    {
        return Question::totalScore($userId);
    }

    public static function countQuestions($testId)
    {
        return Question::countQuestions($testId);
    }
}

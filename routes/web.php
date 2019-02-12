<?php

use App\Printfull\Http\controllers\UsersController;
use App\Printfull\Http\controllers\QuestionsController;

$userName = (string) isset($_POST['userName']) ? $_POST['userName'] : null;
$testId = (int) isset($_POST['testId']) ? $_POST['testId'] : null;
$points = (int) isset($_POST['points']) ? $_POST['points'] : null;
$questionId = (int) isset($_POST['questionId']) ? $_POST['questionId'] : null;

try {
    require 'resources/views/components/header.html';

    if (empty($questionId)) {
        $userId = UsersController::store($userName);
        $_SESSION['userId'] = $userId;
        $_SESSION['testId'] = $testId;
        $_SESSION['testLocation'] = 0;
        $questionsPerTest = QuestionsController::countQuestions($_SESSION['testId']);
        $percentage = ($_SESSION['testLocation']/$questionsPerTest[0]) * 100;

        $results = QuestionsController::showQuestions($_SESSION['testId']);
        $questionTitleAndId = QuestionsController::showTitleAndId($_SESSION['testId']);
    } else {
        QuestionsController::storeScore($_SESSION['userId'], $_SESSION['testId'], $questionId, $points);
        $questionId += 1;
        $_SESSION['testLocation'] += 1;

        $results = QuestionsController::nextQuestions($_SESSION['testId'], $questionId);

        if (! empty($results)) {
            $questionTitleAndId = QuestionsController::showTitleAndId($questionId);
            $questionsPerTest = QuestionsController::countQuestions($_SESSION['testId']);
            $percentage = number_format(($_SESSION['testLocation']/$questionsPerTest[0]) * 100);

            require 'resources/views/questions.html';
            require 'resources/views/components/footer.html';
            exit();
        }

        $username = UsersController::show($_SESSION['userId']);
        $score = QuestionsController::getScore($_SESSION['userId']);
        $questionsPerTest = QuestionsController::countQuestions($_SESSION['testId']);

        require 'resources/views/results.html';
        require 'resources/views/components/footer.html';
        exit();
    }

    require 'resources/views/questions.html';
    require 'resources/views/components/footer.html';
    exit();
} catch (Exception $e) {
    header('location: index.php');
    exit();
}

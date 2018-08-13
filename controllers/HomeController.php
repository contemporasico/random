<?php
// Include base controller to support basic framework fuctions
include CONTROLLER . 'Controller.php';
/**
* Home Controller
*/
class HomeController extends Controller
{
    public function index()
    {
        $boardModel = $this->loadModel('BoardModel');
        $data['boards'] = $boardModel->getBoards();
        $data['page_title'] = 'Home Page - Custom PHP Framework';
        $this->view('home', $data);
    }
}
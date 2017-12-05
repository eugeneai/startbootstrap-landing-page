<?php
require __DIR__ . '/vendor/autoload.php';
// require_once 'PHPTAL.php';

// create a new template object
$template = new PHPTAL('index.pt');

// the Person class
class Person {
    public $name;
    public $phone;

    function Person($name, $phone) {
        $this->name = $name;
        $this->phone = $phone;
    }
}

// let's create an array of objects for test purpose
$people = array();
$people[] = new Person("foo", "01-344-121-021");
$people[] = new Person("bar", "05-999-165-541");
$people[] = new Person("baz", "01-389-321-024");
$people[] = new Person("quz", "05-321-378-654");

// put some data into the template context
$template->title = 'The title value';
$template->people = $people;

// execute the template
try {
    echo $template->execute();
}
catch (Exception $e){
    echo $e;
}
?>

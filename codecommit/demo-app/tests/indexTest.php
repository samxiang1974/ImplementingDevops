<?php
require_once "src/index.php";
use PHPUnit\Framework\TestCase;

class IndexTest extends TestCase
{
  public function testGreet() {
    global $full_name;
    $expected = "Hello $full_name!";
    $actual = greet($full_name);
    $this->assertEquals($expected, $actual);
    }
}

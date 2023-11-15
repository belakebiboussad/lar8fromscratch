<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Services\Livre;
class WelcomeControllerTest extends TestCase
{
    /**
     * A basic feature test example.
     */
//    public function test_example(): void
//    {
//        $response = $this->get('/');
//
//        $response->assertStatus(200);
//    }

    public function testIndex()
    {
        // Création Mock
        $this->mock(Livre::class, function ($mock) {
            $mock->shouldReceive('getTitle')->andReturn('Title');
        });
        // Action
        $response = $this->get('welcome');
        // Assertions
        $response->assertSuccessful();
        $response->assertViewHas('title', 'Title');
//        $response = $this->get('welcome');//    $response->assertStatus(200);
    }
}

<?php 

declare(strict_types = 1);

namespace App\Controllers\API\V1;

use App\Controllers\BaseController;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\HTTP\ResponseInterface;

class Health extends BaseController {
    
    use ResponseTrait;

    public function index(): ResponseInterface {
        return $this->respond([
            'status' => 'ok' ,
            'service' => 'Fleetly API'
        ]);
    }
}
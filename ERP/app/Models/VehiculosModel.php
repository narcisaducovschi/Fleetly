<?php

namespace App\Models;

use CodeIgniter\Model;

class VehiculosModel extends Model
{

    protected $table            = "vehiculos";
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $protectFields    = true;

    protected $allowedFields = [
        'matricula' ,
        'modelo',
        'estado',
        'km',
        'plaza',
    ];

}

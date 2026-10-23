<?php

namespace App\Models;

use CodeIgniter\Model;

class RespotajeModel extends Model
{

    protected $table            = "respostaje";
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $protectFields    = true;

    protected $allowedFields = [
        'trabajador_id' ,
        'vehiculo_id',
        'litros',
        'importe',
        'km_actuales',
        'fecha'
    ];

}

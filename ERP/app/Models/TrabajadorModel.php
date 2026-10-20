<?php

namespace App\Models;

use CodeIgniter\Model;

class TrabajadorModel extends Model
{

    protected $table            = "trabajadores";
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $protectFields    = true;

    protected $allowedFields = [
        'usuario_id' ,
        'nombre',
        'dni',
        'telefono',
        'vehiculo_id',
    ];

}

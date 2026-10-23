<?php

namespace App\Models;

use CodeIgniter\Model;

class FichajesModel extends Model
{

    protected $table            = "fichajes";
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $protectFields    = true;

    protected $allowedFields = [
        'trabajador_id',
        'hora_entrada' ,
        'hora_salida'
    ];

}

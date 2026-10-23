<?php

namespace App\Models;

use CodeIgniter\Model;

class MantenimientoModel extends Model
{

    protected $table            = "mantenimiento";
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $protectFields    = true;

    protected $allowedFields = [
        'vehiculo_id',
        'tipo',
        'fecha_programada',
        'estado',
        'km' ,
        'coste'
    ];

}

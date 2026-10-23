<?php

namespace App\Models;

use CodeIgniter\Model;

class MantenimientoModel extends Model
{

    protected $table            = "incidencia";
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $protectFields    = true;

    protected $allowedFields = [
        'reporte_diario_id',
        'tipo',
        'descripcion',
        'foto_url',
        'estado' ,
        'hora'
    ];

}

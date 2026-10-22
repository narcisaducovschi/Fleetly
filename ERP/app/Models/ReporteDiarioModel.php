<?php

namespace App\Models;

use CodeIgniter\Model;

class ReporteDiarioModel extends Model
{

    protected $table            = "reporte_diario";
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $protectFields    = true;

    protected $allowedFields = [
        'trabajador_id' ,
        'vehiculo_id',
        'fecha',
        'km_inicio',
        'km_fin',
        'observaciones'
    ];

}

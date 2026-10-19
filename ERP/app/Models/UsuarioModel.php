<?php

namespace App\Models;

use CodeIgniter\Model;

class UsuarioModel extends Model
{

    protected $table            = "usuarios";
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $protectFields    = true;

    protected $allowedFields = [
        'email',
        'password',
        'rol',
    ];

    protected $validationRules = [
        'email' => 'required|valid_email|max_length[255]',
        'password' => 'required|max_length[255]',
        'rol' => 'required|max_length[255]',
    ];
}

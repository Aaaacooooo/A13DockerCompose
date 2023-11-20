<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class UserPolicy
{
    use HandlesAuthorization;

    public function viewAny(User $user)
    {   
        //Definimos la lóica de autorización
        //Le damos el atributo admin a los users que pasen por aquí
        return $user->admin;
    }
}

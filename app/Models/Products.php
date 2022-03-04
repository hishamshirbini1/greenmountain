<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    use HasFactory;

    function category(){
        return $this->belongsToMany('App\Models\MyCategories');
    }

    function getBaseImage(){
        return (json_decode($this->img_gallery))[0];
    }
}

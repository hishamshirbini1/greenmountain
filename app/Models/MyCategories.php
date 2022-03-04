<?php

namespace App\Models;

use App\Models\Products;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MyCategories extends Model
{
    use HasFactory;
    function products(){
        return $this->belongsToMany('App\Models\Products');
    }

    public function hasChildren(){
        return $this->children->count() > 0;
    }
    
    public function children(){
        return $this->hasMany(self::class, 'parent_id');
    }
    
    public function parentId()
    {
        return $this->belongsTo(self::class);
    }
    function related_products(){
       return Products::with('category', 'category.products')->whereHas('category', function($q){
            $q->where('name', $this->name);
       })->get();
    }
}

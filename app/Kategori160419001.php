<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kategori160419001 extends Model
{
    public function obat()
    {
        return $this->hasMany('App/obat160419001', 'category_id', 'id');
    }
}

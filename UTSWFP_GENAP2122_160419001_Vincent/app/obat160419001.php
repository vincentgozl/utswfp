<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class obat160419001 extends Model
{
    protected $table='obat160419001';
    public function kategori()
    {
        return $this->belongsTo('App/Kategori160419001', 'category_id');
    }
}

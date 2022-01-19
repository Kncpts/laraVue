<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Baggage extends Model
{
    use HasFactory;
    protected $fillable = ['user_id', 'destination', 'air_freight', 'airport_transfer_charges', 'warehouse_services_charges', 'document_fee', 'handling_fee', 'inspection_fee', 'total'];
    public function baggageDetails()
    {
        return $this->hasMany(BaggageDetail::class);
    }
    protected $casts = [
        'created_at'  => 'date:Y-m-d'
    ];
}

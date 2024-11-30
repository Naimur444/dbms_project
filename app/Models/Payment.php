<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'bill_id',
        'amount',
        'status',
        'payment_date',
    ];

    // Relationship with the User
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Relationship with the Bill
    public function bill()
    {
        return $this->belongsTo(Bill::class);
    }
}


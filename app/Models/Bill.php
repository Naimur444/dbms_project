<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Bill extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'amount_due',
        'due_date',
        'status',
    ];
    protected $casts = [
        'due_date' => 'datetime',
    ];

    // Relationship with the User
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Relationship with payments
    public function payments()
    {
        return $this->hasMany(Payment::class);
    }
}

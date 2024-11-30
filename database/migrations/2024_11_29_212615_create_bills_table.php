<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBillsTable extends Migration
{
    public function up()
    {
        Schema::create('bills', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');  // Foreign key to the users table
            $table->decimal('amount_due', 10, 2);  // Bill amount
            $table->date('due_date');  // Due date of the bill
            $table->enum('status', ['paid', 'unpaid', 'overdue'])->default('unpaid');  // Bill status
            $table->timestamps();  // Created and updated timestamps
        });
    }

    public function down()
    {
        Schema::dropIfExists('bills');  // Drop the bills table if it exists
    }
}

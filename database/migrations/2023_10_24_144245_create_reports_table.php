<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reports', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('business_id');
            $table->unsignedBigInteger('staff_id');
            $table->dateTime('transaction_time');
            $table->string('payment_type', 30);
            $table->string('customer_name', 80);
            $table->string('tax', 10);
            $table->float('pay_amount', 8,2);
            $table->float('change_amount', 8,2);
            $table->float('total_amount', 8,2);
            $table->string('payment_status', 10);
            $table->timestamps();

            $table->foreign('business_id')->references('id')->on('business')->cascadeOnDelete()->cascadeOnUpdate();
            $table->foreign('staff_id')->references('id')->on('users')->cascadeOnDelete()->cascadeOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('reports');
    }
};

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBaggageTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('baggage', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id');
            $table->text('destination');
            $table->double('air_freight', 20, 3);
            $table->double('airport_transfer_charges', 20, 3);
            $table->double('warehouse_services_charges', 20, 3);
            $table->double('document_fee', 11, 3);
            $table->double('handling_fee', 11, 3);
            $table->double('inspection_fee', 11, 3);
            $table->double('total', 20, 3)->comment('sum all charges in an table');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('baggage');
    }
}

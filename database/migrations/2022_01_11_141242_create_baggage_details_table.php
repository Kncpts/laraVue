<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBaggageDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('baggage_details', function (Blueprint $table) {
            $table->id();

            $table->integer('baggage_id');
            $table->string('item_name');
            $table->text('description');
            $table->double('quantity', 10, 2);
            $table->double('weight', 10, 2);
            $table->double('length', 10, 2);
            $table->double('breath', 10, 2);
            $table->double('height', 10, 2);
            $table->double('total', 10, 2);
            $table->foreign('baggage_id')->references('id')->on('baggage')->onDelete('cascade');
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
        Schema::table('baggage_details', function ($table) {
            $table->dropForeign('baggage_details_baggage_id_foreign');
            Schema::dropIfExists('baggage_details');
            // $table->dropIndex('baggage_details_baggage_id_index');
            $table->dropColumn('baggage_id');
        });
    }
}

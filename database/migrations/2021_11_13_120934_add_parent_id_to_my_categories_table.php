<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddParentIdToMyCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('my_categories', function (Blueprint $table) {
            $table->bigInteger('parent_id')->nullable();
            $table->string('slug')->nullable();
            $table->text('image')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('my_categories', function (Blueprint $table) {
            $table->dropColumn('parent_id');
            $table->dropColumn('image');
            $table->dropColumn('slug');
        });
    }
}

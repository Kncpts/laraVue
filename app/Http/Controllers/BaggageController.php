<?php

namespace App\Http\Controllers;

use App\Models\Baggage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Repositories\Baggage\BaggageRepository;

class BaggageController extends Controller
{
    protected $BaggageRepository  = '';
    public function __construct(BaggageRepository  $BaggageRepository)
    {
        $this->BaggageRepository  = $BaggageRepository;
    }
    public function store(Request $request)
    {
        return $this->BaggageRepository->store($request) ?
            response()->json(['message' => 'Record Created Successfully.']) :
            response()->json(['message' => 'Record Creation Failed.']);
    }

    public function index()
    {
        $userBaggage = $this->BaggageRepository->index();
        return response()->json(['userBaggageDetails' => $userBaggage[0]['baggage']]);
    }

    public function show($id)
    {
        return   $this->BaggageRepository->show($id);
    }
}

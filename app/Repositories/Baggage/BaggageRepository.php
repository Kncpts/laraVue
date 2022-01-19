<?php

namespace App\Repositories\Baggage;

use JasonGuru\LaravelMakeRepository\Repository\BaseRepository;
use App\Models\Baggage;
use App\Models\BaggageDetail;
use Illuminate\Support\Facades\Auth;


class BaggageRepository
{
    /**
     * @return string
     *  Return the model
     */
    public function model()
    {
        //return YourModel::class;
    }
    public function store($request)
    {
        $totalWeight = 0;
        foreach ($request->weight as $value) :
            $totalWeight = $totalWeight + $value;
        endforeach;

        // Calculation for total
        $airFreight = $this->calculateAirFreight($totalWeight);
        $airportTransferCharges = $this->airPortTransfer($totalWeight);
        $warehouseServiceCharges = $this->warehouseServiceCharges($totalWeight);
        $doucmnetationFee = 25;
        $handlingFee = 25;
        $inspectionFee = 55;
        $total = $this->calculateTotal($inspectionFee, $handlingFee, $doucmnetationFee, $airFreight, $airportTransferCharges, $warehouseServiceCharges);
        // insertion in baggage table 
        $lastRecord = Baggage::create([
            'user_id' => Auth::user()->id,
            'destination' => $request->destination,
            'air_freight' => $airFreight,
            'airport_transfer_charges' => $airportTransferCharges,
            'warehouse_services_charges' => $warehouseServiceCharges,
            'document_fee' => $doucmnetationFee,
            'handling_fee' => $handlingFee,
            'inspection_fee' => $inspectionFee,
            'total' => $total
        ]);



        // insertion in baggage details table


        foreach ($request->weight as $key => $value) :
            BaggageDetail::create([
                'baggage_id' => $lastRecord->id,
                'item_name' => $request->item_name[$key],
                'description' => $request->description[$key],
                'quantity' => $request->quantity[$key],
                'weight' => $request->weight[$key],
                'length' => $request->length[$key],
                'breath' => $request->breath[$key],
                'height' => $request->height[$key],
                'total' => $request->length[$key] + $request->breath[$key] + $request->height[$key]
            ]);
        endforeach;
    }
    public function calculateAirFreight($totalWeight = 0)
    {
        $airFReightCharges = 0;
        if ($totalWeight < 45)
            $airFReightCharges = $totalWeight * 2;

        if (($totalWeight >= 45) && ($totalWeight < 100))
            $airFReightCharges = $totalWeight * 1.99;

        if (($totalWeight >= 100) && ($totalWeight < 300))
            $airFReightCharges = $totalWeight * 1.95;

        if (($totalWeight > 300))
            $airFReightCharges = $totalWeight * 1.94;
        return $airFReightCharges;
    }

    public function airPortTransfer($totalWeight = 0)
    {
        $airPortTransferCharges = '';
        $airPortTransferCharges = $totalWeight * 0.25;
        $airPortTransferCharges = $airPortTransferCharges < 55 ? 55 : $airPortTransferCharges;
        return $airPortTransferCharges;
    }

    public function warehouseServiceCHarges($totalWeight = 0)
    {
        $warehouseServiceCharges = '';
        $warehouseServiceCharges = $totalWeight * 0.15;
        $warehouseServiceCharges = $warehouseServiceCharges < 55 ? 55 : $warehouseServiceCharges;
        return $warehouseServiceCharges;
    }

    public function calculateTotal($inspectionFee, $handlingFee, $doucmnetationFee, $airFreight, $airportTransferCharges, $warehouseServiceCharges)
    {
        return $inspectionFee + $handlingFee + $doucmnetationFee + $airFreight + $airportTransferCharges + $warehouseServiceCharges;
    }
    public function index()
    {
        return Auth::user()->with('baggage')->get();
    }
    public function show($id)
    {
        return Baggage::with('baggageDetails')->find($id);
    }
}

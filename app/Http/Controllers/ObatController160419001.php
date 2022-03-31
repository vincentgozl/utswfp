<?php

namespace App\Http\Controllers;

use App\Kategori160419001;
use App\obat160419001;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use LDAP\Result;

class ObatController160419001 extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $result = obat160419001::all();
        return dd($result);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\obat160419001  $obat160419001
     * @return \Illuminate\Http\Response
     */
    public function show(obat160419001 $obat160419001)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\obat160419001  $obat160419001
     * @return \Illuminate\Http\Response
     */
    public function edit(obat160419001 $obat160419001)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\obat160419001  $obat160419001
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, obat160419001 $obat160419001)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\obat160419001  $obat160419001
     * @return \Illuminate\Http\Response
     */
    public function destroy(obat160419001 $obat160419001)
    {
        //
    }

    public function listobat()
    {
        $result = obat160419001::select('obat160419001.id', 'obat160419001.nama_obat', 'obat160419001.stok', 'obat160419001.harga', 'kategoriobat160419001.nama')
            ->join('kategoriobat160419001', 'kategoriobat160419001.id', '=', 'obat160419001.kategoriobat_id')
            ->get();
        return view('view/listobat', compact('result'));
    }

    public function obatbatuk()
    {
        $result = obat160419001::select('obat160419001.id', 'obat160419001.nama_obat', 'obat160419001.stok', 'obat160419001.harga')
            ->where('kategoriobat_id', '=', '1')
            ->get();

        return view('view/obatbatuk', compact('result'));
    }

    public function descHarga()
    {
        $result = obat160419001::select('kategoriobat160419001.id', 'kategoriobat160419001.nama', DB::raw('SUM(obat160419001.harga) as ttl'))
            ->join('kategoriobat160419001', 'kategoriobat160419001.id', '=', 'obat160419001.kategoriobat_id')
            ->groupBy('kategoriobat160419001.nama', 'kategoriobat160419001.id')
            ->orderByDesc('ttl')
            ->get();

        return view('view/descharga', compact('result'));
    }

    public function stokobat()
    {
        $result = obat160419001::select('obat160419001.nama_obat', 'obat160419001.stok', 'obat160419001.harga')
            ->orderByDesc('obat160419001.stok')
            ->limit(1)
            ->get();

        return view('view/maxstok', compact('result'));
    }
}

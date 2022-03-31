@extends('layout.home')
@section('content')
    <table class="table table-bordered table-head-fixed text-nowrap">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nama</th>
                <th>Stok</th>
                <th>Harga</th>
            </tr>
        </thead>

        <tbody>
            @foreach($result as $d)
            <tr>
                <td>{{$d->id}}</td>
                <td>{{$d->nama_obat}}</td>
                <td>{{$d->stok}}</td>
                <td>{{$d->harga}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
@endsection
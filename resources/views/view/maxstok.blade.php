@extends('layout.home')
@section('content')
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Nama</th>
      <th scope="col">Stok</th>
      <th scope="col">Harga</th>
    </tr>
  </thead>

  <tbody>
      @foreach($result as $d)
      <tr>
        <td>{{$d->nama_obat}}</td>
        <td>{{$d->stok}}</td>
        <td>{{$d->harga}}</td>
      </tr>
      @endforeach
    </tbody>
</table>
@endsection
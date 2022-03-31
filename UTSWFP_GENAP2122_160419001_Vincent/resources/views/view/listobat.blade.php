@extends('layout.home')
@section('content')
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nama</th>
      <th scope="col">Stok</th>
      <th scope="col">Harga</th>
      <th scope="col">Kategori</th>
    </tr>
  </thead>

  <tbody>
      @foreach($result as $d)
      <tr>
        <td>{{$d->id}}</td>
        <td>{{$d->nama_obat}}</td>
        <td>{{$d->stok}}</td>
        <td>{{$d->harga}}</td>
        <td>{{$d->nama}}</td>
      </tr>
      @endforeach
    </tbody>
</table>
@endsection
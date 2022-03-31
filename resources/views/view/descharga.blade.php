@extends('layout.home')
@section('content')
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nama</th>
      <th scope="col">Total Harga</th>

    </tr>
  </thead>

  <tbody>
      @foreach($result as $d)
      <tr>
        <td>{{$d->id}}</td>
        <td>{{$d->nama}}</td>
        <td>{{$d->ttl}}</td>

      </tr>
      @endforeach
    </tbody>
</table>
@endsection
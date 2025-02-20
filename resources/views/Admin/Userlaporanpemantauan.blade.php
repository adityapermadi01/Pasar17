@extends('layouts.templateuser')
@section('content')
<div class="grid grid-cols-12">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form action="{{route('userlaporanpemantauan.index')}}">
                <div class="input-group mb-3">
                    <input type="search" class="form-control " name="search" placeholder="Seacrh..." aria-label="Recipient's username" aria-describedby="basic-addon2" value="{{request('search')}}">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="submit">Search</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div><br><br>
<h2 class="text-xl font-semibold leading-tight text-gray-800">
    {{$title}}
</h2>
<div class="px-6 py-4 bg-white rounded shadow sm:px-2 sm:py-1 sm:br-gray-100">
    <div class="container">
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center col">No</th>
                        <th class="text-center col">Kode Pangan</th>
                        <th class="text-center col">Nama Pangan</th>
                        <th class="text-center col">Januari </th>
                        <th class="text-center col">Februari </th>
                        <th class="text-center col">Maret </th>
                        <th class="text-center col">April </th>
                        <th class="text-center col">Mei </th>
                        <th class="text-center col">Juni </th>
                        <th class="text-center col">Juli </th>
                        <th class="text-center col">Agustus </th>
                        <th class="text-center col">September </th>
                        <th class="text-center col">Oktober </th>
                        <th class="text-center col">November </th>
                        <th class="text-center col">Desember </th>
                    </tr>
                </thead>
                <tbody class="text-center">
                    <?php $no = 1; ?>
                    @foreach ($laporanpemantau as $index => $item)
                    <tr>
                        <td>{{$no}}</td>
                        <td class='text-center'>{{$item->kode}}</td>
                        <td class='text-center'>{{@$item->namaBarang->nama}}</td>
                        <td class='text-center'>{{$item->bulan1}}</td>
                        <td class='text-center'>{{$item->bulan2}}</td>
                        <td class='text-center'>{{$item->bulan3}}</td>
                        <td class='text-center'>{{$item->bulan4}}</td>
                        <td class='text-center'>{{$item->bulan5}}</td>
                        <td class='text-center'>{{$item->bulan6}}</td>
                        <td class='text-center'>{{$item->bulan7}}</td>
                        <td class='text-center'>{{$item->bulan8}}</td>
                        <td class='text-center'>{{$item->bulan9}}</td>
                        <td class='text-center'>{{$item->bulan10}}</td>
                        <td class='text-center'>{{$item->bulan11}}</td>
                        <td class='text-center'>{{$item->bulan12}}</td>
                    </tr>
                    <?php $no++; ?>
                    @endforeach
                </tbody>
            </table>
            {{ $laporanpemantau->links() }}
        </div>
    </div>
</div>

@include('sweetalert::alert')
@endsection
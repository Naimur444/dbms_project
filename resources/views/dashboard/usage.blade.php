@extends('layouts.dashboard')

@section('content')
    <h2 class="text-2xl font-semibold mb-4">Electricity Usage</h2>
    <table class="table-auto w-full mt-2">
        <thead>
            <tr>
                <th class="border px-4 py-2">Date Range</th>
                <th class="border px-4 py-2">Units Consumed</th>
            </tr>
        </thead>
        <tbody>
            @foreach($usage as $record)
                <tr>
                    <td class="border px-4 py-2">{{ $record->start_date }} to {{ $record->end_date }}</td>
                    <td class="border px-4 py-2">{{ $record->units_consumed }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection

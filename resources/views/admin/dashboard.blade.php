@extends('layouts.admin')

@section('title', 'Dashboard')

@section('page_title', 'Dashboard Overview')

@section('content')
    <!-- Dashboard Stats -->
    <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
        <div class="bg-white p-6 rounded-lg shadow-md text-center">
            <h3 class="text-lg font-semibold text-gray-700">Total Users</h3>
            <p class="text-3xl font-bold text-indigo-600 mt-2">{{ $totalUsers }}</p>
        </div>

        <div class="bg-white p-6 rounded-lg shadow-md text-center">
            <h3 class="text-lg font-semibold text-gray-700">Total Due Bills</h3>
            <p class="text-3xl font-bold text-red-600 mt-2">৳{{ number_format($dueBills, 2) }}</p>
        </div>

        <div class="bg-white p-6 rounded-lg shadow-md text-center">
            <h3 class="text-lg font-semibold text-gray-700">Total Payments</h3>
            <p class="text-3xl font-bold text-green-600 mt-2">৳{{ number_format($successfulPayments, 2) }}</p>
        </div>
    </div>

    <!-- Charts -->
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
        <div class="bg-white p-6 rounded-lg shadow-md">
            <h3 class="text-xl font-semibold text-gray-700 mb-4">Payments Chart</h3>
            <canvas id="paymentsChart"></canvas>
        </div>

        <div class="bg-white p-6 rounded-lg shadow-md">
            <h3 class="text-xl font-semibold text-gray-700 mb-4">Due Bills Chart</h3>
            <canvas id="dueBillsChart"></canvas>
        </div>
    </div>
@endsection

@section('scripts')
<script>
    const paymentsChartData = @json($paymentsChartData);
    const dueBillsChartData = @json($dueBillsChartData);

    const paymentsLabels = paymentsChartData.map(item => item.date);
    const paymentsData = paymentsChartData.map(item => item.total_paid);

    const dueBillsLabels = dueBillsChartData.map(item => item.date);
    const dueBillsData = dueBillsChartData.map(item => item.total_due);

    const paymentsChart = new Chart(document.getElementById('paymentsChart'), {
        type: 'line',
        data: {
            labels: paymentsLabels,
            datasets: [{
                label: 'Total Payments',
                data: paymentsData,
                borderColor: 'green',
                fill: false,
            }],
        },
        options: {
            responsive: true,
            plugins: {
                legend: { position: 'top' },
                tooltip: { mode: 'index', intersect: false },
            },
            scales: {
                x: { title: { display: true, text: 'Date' } },
                y: { title: { display: true, text: 'Amount' } },
            },
        }
    });

    const dueBillsChart = new Chart(document.getElementById('dueBillsChart'), {
        type: 'line',
        data: {
            labels: dueBillsLabels,
            datasets: [{
                label: 'Total Due Bills',
                data: dueBillsData,
                borderColor: 'red',
                fill: false,
            }],
        },
        options: {
            responsive: true,
            plugins: {
                legend: { position: 'top' },
                tooltip: { mode: 'index', intersect: false },
            },
            scales: {
                x: { title: { display: true, text: 'Date' } },
                y: { title: { display: true, text: 'Amount' } },
            },
        }
    });
</script>
@endsection

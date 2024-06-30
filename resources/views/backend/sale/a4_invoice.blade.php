<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $lims_sale_data->customer->name . '_Sale_' . $lims_sale_data->reference_no }}</title>
    <style>
        /* Reset and General Styles */
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            padding: 20px;
            border-radius: 8px;
            border: 1px solid #ddd;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 1px solid #ddd;
        }
        .header img {
            max-width: 120px;
            height: auto;
        }
        .invoice-details {
            text-align: right;
        }
        .bill-to {
            background-color: #2b3d50;
            color: #fff;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 6px;
        }
        .bill-to h2 {
            margin: 0;
            font-size: 22px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table th, table td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        .total-section {
            font-weight: bold;
            background-color: #f8f9fa;
        }
        .barcode {
            text-align: center;
            margin-top: 20px;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            color: #888;
        }
        .footer a {
            color: #2b3d50;
            text-decoration: none;
        }
        .buttons {
            margin-top: 20px;
            text-align: center;
        }
        .buttons button {
            padding: 10px 20px;
            margin-right: 10px;
            cursor: pointer;
            background-color: #2b3d50;
            color: #fff;
            border: none;
            border-radius: 4px;
        }
        .buttons button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
   @if(preg_match('~[0-9]~', url()->previous()))
        @php $url = '../../pos'; @endphp
    @else
        @php $url = url()->previous(); @endphp
    @endif
<body>
    <div class="container">
        <div class="header">
            <div>
                <h1>{{ $lims_biller_data->company_name }}</h1>
                <p>{{ $lims_warehouse_data->address }}</p>
                <p>Phone: {{ $lims_warehouse_data->phone }}</p>
                @if($general_setting->vat_registration_number)
                    <p>{{ trans('file.VAT Number') }}: {{ $general_setting->vat_registration_number }}</p>
                @endif
            </div>
            <div>
                <img src="{{ url('public/logo', $general_setting->site_logo) }}" alt="Logo">
            </div>
            <div class="invoice-details">
                <p>Invoice No: {{ $lims_sale_data->reference_no }}</p>
                <p>Date: {{ $lims_sale_data->created_at }}</p>
                @if($paid_by_info)
                    <p>Paid By: {{ $paid_by_info }}</p>
                @endif
            </div>
        </div>
        <div class="bill-to">
            <h2>Bill To</h2>
            <p>{{ $lims_customer_data->name }}</p>
            <p>VAT Number: {{ $lims_customer_data->tax_no }}</p>
            <p>Address: {{ $lims_customer_data->address }}</p>
            <p>Phone: {{ $lims_customer_data->phone_number }}</p>
        </div>
        <table>
            <thead>
                <tr style="background-color: #2b3d50; color: #fff;">
                    <th>#</th>
                    <th>{{ trans('file.Description') }}</th>
                    <th>{{ trans('file.Qty') }}</th>
                    <th>{{ trans('file.Unit Price') }}</th>
                    <th>{{ trans('file.Total') }}</th>
                    <th>{{ trans('file.Tax') }}</th>
                    <th>{{ trans('file.Subtotal') }}</th>
                </tr>
            </thead>
            <tbody>
                <?php $total_product_tax = 0; ?>
                @foreach($lims_product_sale_data as $key => $product_sale_data)
                    <?php
                    $lims_product_data = \App\Models\Product::find($product_sale_data->product_id);
                    if($product_sale_data->sale_unit_id) {
                        $unit = \App\Models\Unit::select('unit_code')->find($product_sale_data->sale_unit_id);
                        $unit_code = $unit->unit_code;
                    }
                    else
                        $unit_code = '';

                    if($product_sale_data->variant_id) {
                        $variant = \App\Models\Variant::select('name')->find($product_sale_data->variant_id);
                        $variant_name = $variant->name;
                    }
                    else
                        $variant_name = '';
                    ?>
                    <tr>
                        <td>{{ $key + 1 }}</td>
                        <td>
                            {!! $lims_product_data->name !!}
                            @foreach($product_custom_fields as $index => $fieldName)
                                <?php $field_name = str_replace(" ", "_", strtolower($fieldName)) ?>
                                @if($lims_product_data->$field_name)
                                    <br>{{ $fieldName . ': ' . $lims_product_data->$field_name }}
                                @endif
                            @endforeach
                            @if($product_sale_data->imei_number)
                                <br>IMEI or Serial: {{ $product_sale_data->imei_number }}
                            @endif
                        </td>
                        <td>{{ $product_sale_data->qty . ' ' . $unit_code . ' ' . $variant_name }}</td>
                        <td>{{ number_format($product_sale_data->net_unit_price, $general_setting->decimal, '.', ',') }}</td>
                        <td>{{ number_format($product_sale_data->net_unit_price * $product_sale_data->qty, $general_setting->decimal, '.', ',') }}</td>
                        <td>{{ number_format($product_sale_data->tax, $general_setting->decimal, '.', ',') }}</td>
                        <td>{{ number_format($product_sale_data->total, $general_setting->decimal, '.', ',') }}</td>
                    </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr class="total-section">
                    <td colspan="5">{{ trans('file.Total Before Tax') }}</td>
                    <td colspan="2">{{ number_format(($lims_sale_data->total_price - ($lims_sale_data->total_tax + $lims_sale_data->order_tax)), $general_setting->decimal, '.', ',') }}</td>
                </tr>
                <tr class="total-section">
                    <td colspan="5">{{ trans('file.Tax') }}</td>
                    <td colspan="2">{{ number_format(($lims_sale_data->total_tax + $lims_sale_data->order_tax), $general_setting->decimal, '.', ',') }}</td>
                </tr>
                <tr class="total-section">
                    <td colspan="5">{{ trans('file.Discount') }}</td>
                    <td colspan="2">{{ number_format(($lims_sale_data->total_discount + $lims_sale_data->order_discount), $general_setting->decimal, '.', ',') }}</td>
                </tr>
                <tr class="total-section">
                    <td colspan="5">{{ trans('file.Grand Total') }}</td>
                    <td colspan="2">{{ number_format($lims_sale_data->grand_total, $general_setting->decimal, '.', ',') }}</td>
                </tr>
                <tr>
                    <td colspan="5">{{ trans('file.In Words') }}</td>
                    <td colspan="2">
                        @if($general_setting->currency_position == 'prefix')
                            {{ $currency_code }} <span>{{ str_replace("-", " ", $numberInWords) }}</span> only
                        @else
                            <span>{{ str_replace("-", " ", $numberInWords) }}</span> {{ $currency_code }} only
                        @endif
                    </td>
                </tr>
                <tr>
                    <td colspan="5">{{ trans('file.Paid') }}</td>
                    <td colspan="2">{{ number_format($lims_sale_data->paid_amount, $general_setting->decimal, '.', ',') }}</td>
                </tr>
                <tr>
                    <td colspan="5">{{ trans('file.Due') }}</td>
                    <td colspan="2">{{ number_format(($lims_sale_data->grand_total - $lims_sale_data->paid_amount), $general_setting->decimal, '.', ',') }}</td>
                </tr>
            </tfoot>
        </table>
        <div class="barcode">
            <img src="data:image/png;base64,{{ DNS1D::getBarcodePNG($lims_sale_data->reference_no, 'C128') }}" alt="barcode">
            <br><br>
            <img src="data:image/png;base64,{{ DNS2D::getBarcodePNG($qrText, 'QRCODE') }}" alt="barcode">
        </div>
        <div class="footer">
            <p>{{trans('file.Thank you for shopping with us. Please come again')}}</p>
          
        </div>
        <div class="buttons">
            <a href="{{$url}}" class="btn btn-info"><i class="fa fa-arrow-left"></i> {{trans('file.Back')}}</a>
      
            <button onclick="window.print();" class="print-button"><i class="dripicons-print"></i> {{trans('file.Print')}}</button>
        </div>
    </div>
    
    <script type="text/javascript">
    localStorage.clear();
    function auto_print() {
        window.print();
    }
    setTimeout(auto_print, 1000);
</script>
</body>
</html>

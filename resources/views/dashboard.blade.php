@extends('layout')

@section('mainContainer')

    <div class="clearfix" style="margin: 40px 0px;">
        <h3 class="float-left">Participants</h3>
    </div>
    <div class="table-responsive">
        <table id="participant_table" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Date of Birth</th>
                    <th>Profession</th>
                    <th>Locality</th>
                    <th>Number of Guests</th>
                    <th>Address</th>
                    <th>Created</th>
                    <th>Status</th>
                </tr>
            </thead>
        </table>
    </div>
    
    <script>

        $(document).ready(function(){
            
            $('#participant_table').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: "{{ route('dashboard') }}",
                },
                columns: [
                    {
                        data: 'id',
                        name: 'id'
                    },
                    {
                        data: 'name',
                        name: 'name'
                    },
                    {
                        data: 'age',
                        name: 'age'
                    },
                    {
                        data: 'dob',
                        name: 'dob'
                    },
                    {
                        data: 'profession',
                        name: 'profession'
                    },
                    {
                        data: 'locality',
                        name: 'locality'
                    },
                    {
                        data: 'guests',
                        name: 'guests'
                    },
                    {
                        data: 'address',
                        name: 'address'
                    },
                    {
                        data: 'created_at',
                        name: 'created_at'
                    },
                    {
                        data: 'is_active',
                        name: 'is_active',
                    }
                ]
            });
       });
    </script>
@endsection
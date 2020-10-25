<?php

namespace App\Http\Controllers;

use App\Http\Requests\ParticipantRequest;
use App\Participant;

class ParticipantController extends Controller
{
    /**
     *  Create a new Participant
     */
    public function register(ParticipantRequest $request)
    {
        try {

            Participant::create($request->toArray());

            return response()->json([ 'status' => 'success', 'code' => 200, 'messages' => 'Participant Created Successfully' ]);

        } catch (\Throwable $th) {

            return response()->json([ 'status' => 'failure', 'code' => 422, 'messages' => 'Some Issue Occured' ]);
        }
    }

    /**
     *  Returns a list of Participants
     */
    public function listing($page, $perPage)
    {
        try {

            $offset = ($page - 1) * $perPage;
            
            $participants = Participant::offset($offset)->limit($perPage)->get();

            return response()->json([ 'status' => 'success', 'code' => 200, 'data' => $participants ]);

        } catch (\Throwable $th) {
            
            return response()->json([ 'status' => 'failure', 'code' => 422, 'messages' => 'Some Issue Occured' ]);
        }
    }

    /**
     *  Update an existing Participant
     */
    public function update(ParticipantRequest $request, $id)
    {
        try {
            
            Participant::find($id)->update($request->toArray());

            return response()->json([ 'status' => 'success', 'code' => 200, 'messages' => 'Participant Updated Successfully' ]);

        } catch (\Throwable $th) {
            
            return response()->json([ 'status' => 'failure', 'code' => 422, 'messages' => 'Some Issue Occured' ]);
        }
    }
}

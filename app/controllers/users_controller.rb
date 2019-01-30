class UsersController < ApplicationController

def show 
    user = User.find(params[:id])
    created_events = Event.where(user_id: user.id)
    events_with_joined_users = created_events.map do |event|
        {event_details: event, joined_users: event.users}
    end

    render json: {user_details: user, joined_events: user.events, created_events: events_with_joined_users}
end

end
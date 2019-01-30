class EventsController < ApplicationController

    def index 
        events_with_joined_users = Event.all.map do |event|
            {event_details: event, joined_users: event.users}
        end
        render json: events_with_joined_users
    end
    
end
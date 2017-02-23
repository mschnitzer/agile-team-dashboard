class EventType < ActiveHash::Base
  include ActiveHash::Associations
  has_many :events

  self.data = [
    {id: 1, name: "Meeting"},
    {id: 2, name: "Workshop"},
    {id: 3, name: "Vacation"},
    {id: 4, name: "Sick"}
  ]
end

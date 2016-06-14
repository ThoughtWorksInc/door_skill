defmodule DoorSkill do
  use Alexa.Skill, app_id: Application.get_env(:door_skill, :app_id)
  alias Alexa.{Request, Response}

  def handle_intent("OpenDoor", request, response) do
    Response.say(response, "Ok, opening door")
  end

end

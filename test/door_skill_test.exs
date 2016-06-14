defmodule DoorSkillTest do
  use Pavlov.Case, async: true
  import Alexa.Response
  alias Alexa.Request
  doctest DoorSkill

  @app_id "test-app-id"

  def create_request(intent_name, slot_values \\ %{}, attributes \\ %{}) do
    Request.intent_request("test-app-id", intent_name, nil, slot_values, attributes)
  end

  describe "when asked to open door" do
    let :request, do: DoorSkillTest.create_request("OpenDoor")
    subject do: Alexa.handle_request(request)

    it "should respond with greeting" do
      assert "Ok, opening door" = say(subject)
    end
  end

end

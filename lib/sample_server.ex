defmodule SampleServer do
  use GRPC.Server, service: Example.SampleService.Service
  require Logger

  def request(req, _stream) do
    Logger.info("name=#{req.name} clock=#{req.clock}")

    Example.SampleReply.new(message: "Hello #{req.name}", ercd: "324")
  end
end

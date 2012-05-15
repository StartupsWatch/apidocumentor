# encoding: utf-8
class StaticFilesController < ApplicationController
  def http_response_codes
    @codes = {
      :success => [
        ["200", "OK", "Indicates a nonspecific success"],
        ["201", "Created", "Sent primarily by collections and stores but sometimes also by controllers, to indicate that a new resource has been created"],
        ["202", "Accepted", "Sent by controllers to indicate the start of an asynchronous action Indicates that the body has been intentionally left blank"],
        ["204", "No Content", "Indicates that the body has been intentionally left blank"],
        ["301", "Moved Permanently", "Indicates that a new permanent URI has been assigned to the client’s requested resource"],
        ["303", "See Other","Sent by controllers to return results that it considers optional"],
        ["304", "Not Modified","Sent to preserve bandwidth (with conditional GET)"],
        ["307", "Temporary Redirect","Indicates that a temporary URI has been assigned to the client’s requested resource"]
      ],
      :error => [
        ["400", "Bad Request", "Indicates a nonspecific client error"],
        ["401", "Unauthorized", "Sent when the client either provided invalid credentials or forgot to send them"],
        ["402", "Forbidden", "Sent to deny access to a protected resource"],
        ["404", "Not Found", "Sent when the client tried to interact with a URI that the REST API could not map to a resource"],
        ["405", "Method Not Allowed", "Sent when the client tried to interact using an unsupported HTTP method"],
        ["406", "Not Acceptable", "Sent when the client tried to request data in an unsupported media type format"],
        ["409", "Conflict", "Indicates that the client attempted to violate resource state"],
        ["412", "Precondition Failed", "Tells the client that one of its preconditions was not met"],
        ["415", "Unsupported Media Type", "Sent when the client submitted data in an unsupported media type format"],
        ["500", "Internal Server Error", "Tells the client that the API is having problems of its own"]
      ]
    }
  end
end
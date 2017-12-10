@assignment.each do |assignment|
  json.set! assignment.id do
    json.partial! 'api/assignments/assignment', assignment: assignment
  end
end

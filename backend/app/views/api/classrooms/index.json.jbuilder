@classroom.each do |classroom|
  json.set! classroom.id do
    json.partial! 'api/classrooms/classroom', classroom: classroom
  end
end

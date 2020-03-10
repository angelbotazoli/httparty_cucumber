After do |scenario|
    if scenario.failed?
        puts "REQUEST => #{@request.to_json}"
        puts "RESPONSE => #{@request_result.parsed_response.to_json}"
    end
end

After('@get_book') do
    steps %{
        Dado que para consultar books o usuário informou os dados:
        | ID | 1 |
    }
    expect(@request_result.response.code).to eql "200"
end
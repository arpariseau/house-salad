class SearchResults

  def search_members(state)
    results = PropublicaService.new.house_members(state)[:results]
    results.map do |member_data|
      Member.new(member_data)
    end
  end

end

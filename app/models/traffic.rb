class Traffic < Vote
  def traffic(vote)
    self.traffics.find_or_create_by(vote)
  end
end

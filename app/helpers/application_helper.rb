module ApplicationHelper
  def percentage_votes(all, local)
    return 0 unless local > 0
    (local.to_f / all.to_f * 100).to_i
  end
end

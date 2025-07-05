require_relative 'languages/active'

Language.transaction do
  language_ids = @languages.map { |language| language[:id] }
  Language.unscoped.where(is_archived: false).where.not(id: language_ids).update_all(is_archived: true)

  @languages.each do |language|
    Language
      .find_or_initialize_by(id: language[:id])
      .update!(
        name: language[:name],
        is_archived: language[:is_archived],
        source_file: language[:source_file],
        compile_cmd: language[:compile_cmd],
        run_cmd: language[:run_cmd],
      )
  end
end

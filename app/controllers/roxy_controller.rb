class RoxyController < ApplicationController
  def welcome
    @file_diffs = CouchPotato.database.view FileDiff.all
  end

  def postYieldDiffData
    baseText = params['baseText'].to_s.split("\n")
    newText = params['newText'].to_s.split("\n")

    sm = Test::Unit::Diff::SequenceMatcher.new(baseText, newText)

    result = { :opcodes => sm.grouped_operations.first, :baseText => baseText, :newText => newText }
    fd = FileDiff.new result
    CouchPotato.database.save_document fd

    render :json => result
  end
end

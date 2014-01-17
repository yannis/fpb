class RenameCommitteeMembersToCouncilMembers < ActiveRecord::Migration
  def change
    rename_table 'committee_members', 'council_members'
  end
end

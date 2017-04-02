require 'test_helper'

class WorkTest< ActiveSupport::TestCase

  test "work validates_presence_of [:title, :video_code, :category_id]" do
    work = Work.new
    assert_not work.save
    assert work.errors.keys == [:title, :video_code, :category_id]
  end

  test "validate documentary status" do
    docs = Category.find_by(name: 'Docs + Features')
    doc_work = Work.new(title: 'MonkeyTest1', still_code: 494475693, video_code: 110282619, category_id: docs.id)
    assert_not doc_work.valid?
    assert doc_work.errors.keys == [:status]
  end

  test "dont use status 1-3 if not documentary" do
    category = Category.where.not(name: 'Docs + Features').sample
    status = WorkStatus.find_by(name: 'Completed')
    work = Work.new(title: 'MonkeyTest1', still_code: 494475693, video_code: 110282619, category_id: category.id, work_status_id: status.id )
    work.save
    assert_not work.work_status_id
  end


end

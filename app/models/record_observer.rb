class RecordObserver < ActiveRecord::Observer
  observe :records
  def after_create(record)
    record.logger.info('New record added!')
  end

end

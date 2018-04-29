class RecordObserver < ActiveRecord::Observer
  def after_create(record)
    record.logger.info('New record added!')
  end

end

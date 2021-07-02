module ActsAsStatus
  def acts_as_status( field, valid_values )

    status_variable = '@' + field.to_s.upcase() + '_STATUS'
    instance_variable_set status_variable, valid_values

    self.validates field, :inclusion => { :in => instance_variable_get(status_variable) }

    valid_values.each do |valid_value|
      define_method "#{valid_value}?" do
        self.send("#{field}") == valid_value
      end

      (class << self; self; end).send(:define_method, "only#{valid_value}") do
        where(["#{self.table_name}.#{field} = ?", valid_value])
      end

    end

    (class << self; self; end).send(:define_method, "available_#{field}") do
      valid_values
    end

  end
end

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend ActsAsStatus
end

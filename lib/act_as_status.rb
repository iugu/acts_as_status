module ActsAsStatus
  def acts_as_status( field, valid_values )

    status_variable = '@' + field.to_s.upcase() + '_STATUS'
    instance_variable_set status_variable, valid_values

    self.validates field, :inclusion => { :in => instance_variable_get(status_variable) }

    valid_values.each do |valid_value|
      define_method "#{valid_value}?" do
        self.send("#{field}") == valid_value
      end

      (class << self; self; end).send(:define_method, "only_#{valid_value}") do
        where(["#{field} = ?", valid_value])
      end

      (class << self; self; end).send(:define_method, "#{valid_value}") do
        valid_value
      end
    end

  end
end

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend ActsAsStatus
end

module FriendlyIdPatch

  def friendly_id?
    if [Numeric, Symbol, ActiveRecord::Base, NilClass].detect {|klass| self.class <= klass}
      false
    elsif respond_to?(:to_i) && to_i.to_s != to_s
      true
    end
  end

end

Object.send :include, FriendlyIdPatch
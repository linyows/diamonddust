module Diamonddust
  module Tagging
    extend ActiveSupport::Concern

    included do
      extend ClassMethods
      include InstanceMethods

      field :tags, type: Array
      attr_accessible :tags
      before_validation :tags_to_array

      scope :tagged_with, ->(*tags) {
        tags = [tags] if tags.is_a?(String)
        any_in(tags: tags.flatten)
      }
    end

    module ClassMethods
      def all_tags
        t = self.where(:tags.ne => []).only(:tags).each_with_object [] do |s, result|
          result.concat(s.tags_origin)
        end
        t.uniq
      end
    end

    module InstanceMethods
      def tags
        return super unless super.is_a?(Array)
        (super || []).join(', ')
      end

      def tags_origin
        self.tags.strip.gsub(/,\s*,/, ',').split(/\s*,\s*/).uniq
      end

      private

      def tags_to_array
        return unless self.tags || self.tags.is_a?(String)
        self.tags = tags_origin
      end
    end
  end
end

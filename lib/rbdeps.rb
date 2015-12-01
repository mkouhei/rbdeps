require 'rubygems'
require "rbdeps/version"

module Deps
   class  << self
     def search
       Gem::Commands::SearchCommand.new
     end

     def latest_version
     end
   end

  class Package
    def cleanup
    end

    def trace_chain
    end

    def draw
    end
  end

  class Node
    def add_targets
    end

    def remove_targets
    end

    def add_development_targets
    end

    def update_depth
    end
  end

  class Target < Node
  end

  class Depth
    def set
    end

    def get
    end

    def parse
    end
  end
end

module Graph
  class Graph
    def initialize
      @defaulnt_radius = '6'
      @default_color= '#ff9900'
      @requires_color = '#5f9ea0'
      @default_width = '1'
    end

    def generate_nodes
    end

    def count_depth
    end
  end

  class Metadata
  end

  class Linkdraw < Graph

    def generate_edges
    end

    def generate_data
    end

    def disable_descr
    end

    def disable_time
    end

    def generate_position
    end
  end

  def color
  end

  def router
  end

  def pretty_print
  end
end

module Cache
  def backend
  end

  class Container
    def store_data
    end

    def read_data
    end

    def list_data
    end
  end

  class Marshal < Container
    def load_cache
    end

    def save_cache
    end

    def store_data
    end
  end

  class Memcached < Container
    def store_data
    end

    def read_data
    end
  end
end

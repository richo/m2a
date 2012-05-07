require 'optparse'
require 'ostruct'
module M2A::CLI
  module Argparse
    SANE_DEFAULTS = {
      :width => 80,
      :height => 24
    }

    class Argparser

      def initialize
        @optparser = OptionParser.new do |opts|
          opts.banner = "Usage: ascii_meme <meme_name>"

          opts.on('-w', '--width WIDTH', Float, "Output WIDTH characters wide") do |width| #{{{
            options[:width] = width.to_i
          end #}}}
          opts.on('-h', '--height HEIGHT', Float, "Output HEIGHT characters high") do |height|#{{{
            options[:height] = height.to_i
          end #}}}

          opts.on('--help', "Print this help screen") do
            puts opts
            exit
          end
        end
      end

      # idempotent
      def opts
        @opts ||= parsed_options!
      end

      def parsed_options!
        @optparser.parse!
        if ARGV.empty? == 0
          print_help_and_exit
        else
          options[:meme] = ARGV[0]
        end

        OpenStruct.new(SANE_DEFAULTS.merge(options))
      end

      def print_help_and_exit
        puts @optparser.help
        exit
      end

      def options
        @options ||= Hash.new
      end

    end

  end
end

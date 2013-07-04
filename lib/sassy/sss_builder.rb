require "benchmark"

module Sassy
  class SSSBulider

    def initialize(variables, answers)
    end

    private

    def write!
      # not sure if I like exception handling for control flow
      begin
        create_definition_file(variables)
        create_data_file(answers)
      rescue
        # some useful kind of exception here
      end
    end

    def create_definition_file(variables)
      # Skeleton code. Needs to be populated with actual values.

      $KCODE = 'UTF8'
      xml_builder = Builder::XmlMarkup.new(indent: 2)
      xml_builder.instruct!(:xml, :version=> "1.0", :encoding => "UTF-8")

      xml_builder.sss(version: 1.2) do |x|
        x.date("date_text")
        x.time("time_text")
        x.origin("origin_text")
        x.user("user_text")
        x.survey do |s|
          s.name("survey_name")
          s.title("survey_title_text")
          s.record(ident: "record_id") do |r|
            r.variable(:ident => 5, :type => "single") do |v| 
              v.name("Q1")
              v.label("Number of visits")
              v.position(start: "1")
              v.values do |va| 
                va.value("First visit", code: 1)
                va.value("Visited before within the year", code: 2)
                va.value("Visited before that", code: 3)
              end
            end
            r.variable(ident: 3, type: "character") do |v|
              v.name("Q3")
              v.label("Other attractions visited")
              v.position(start: 11, finish: 40)
              v.size("30")
            end
            r.variable(ident: 99, type: "quantity") do |v|
              v.name("Q99")
              v.label("case weight")
              v.position(start: 48, finish: 54)
              v.range(from: "0.0000", to: "99.9999")
            end
          end
        end
      end

      File.open("definition_file.xml", "w+") { |file| file.write(xml_builder.target!) } # Not sure about the w+
    end

    def create_data_file(answers)
    end
  end
end
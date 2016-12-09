
class ABCTuneHeader
attr_accessor :a_area, :b_book, :c_composer, :d_discography,
              :f_file_url, :g_group, :h_history, :i_instruction,
              :l_unit_note_length, :m_meter, :mm_macro,:n_notes,
              :o_origin, :r_rhythm, :rr_remark, :s_source,
              :u_user_defined, :z_transcription, :k_key, :p_parts,
              :q_tempo, :t_tune_title, :v_voice, :w_words,
              :x_reference_number
end

class ABCFileHeader
  attr_accessor :a_area, :b_book, :c_composer, :d_discography,
                :f_file_url, :g_group, :h_history, :i_instruction,
                :l_unit_note_length, :m_meter, :mm_macro,:n_notes,
                :o_origin, :r_rhythm, :rr_remark, :s_source,
                :u_user_defined, :z_transcription
                
                
                
end

class ABCTune
  attr_accessor :parts, :abc, :file_header, :tune_header, :tune_body
end

class ABCTuneBook
  ABC_VERSION   = '%abc-2.1'
  ABC_MIME_TYPE = 'text/vnd.abc'
 
  attr_accessor :tunes
  
  def initialize(abc = nil)
    @abc = abc
    if @abc then
      parse
    else
      
    end
  end
  
  def parse
    @abc.each do |line|
      count = 0
      while count < line.size do
        puts line[count]
        count += 1
      end
    end
  end
  
  private :parse
  
  
end



tb = ABCTuneBook.new(["X:1"])








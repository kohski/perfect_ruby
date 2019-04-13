class Processor
  def process
    protected_process
  end

  def protected_process
    private_process
  end
  protected :protected_process

  def private_process
    puts 'Done!'
  end

  private :private_process
  
end

process = Processor.new
process.process

process.private_process # name errorがでるよ
process.protected_process　# name errorがでるよ

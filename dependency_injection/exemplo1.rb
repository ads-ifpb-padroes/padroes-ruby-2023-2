class EmailService
    def send_email(to, body)
      # Lógica para enviar email
     puts "para:" + " " + to + " " + "mensagem:" + " " + body
    end
  end
  

  class User
    def initialize(email_service)
      @email_service = email_service
    end
  
    def send_email(to, body)
      @email_service.send_email(to, body)
    end
  end
  
  
  email_service = EmailService.new
  user = User.new(email_service)
  user.send_email('user@example.com', 'Olá!')
## Rodando com CMD

supondo que o nome do arquivo java é HelloWorld.java
```
javac HelloWorld.java
java HelloWorld
```
## Aplicação Client Servidor Socket

#### Servidor
```
import java.io.ObjectOutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Date;

public class ServidorTCPBasico {
  public static void main(String[] args) {
    try {
      // Instancia o ServerSocket ouvindo a porta 12345
      ServerSocket servidor = new ServerSocket(12345);
      System.out.println("Servidor ouvindo a porta 12345");
      while(true) {
        // o método accept() bloqueia a execução até que
        // o servidor receba um pedido de conexão
        Socket cliente = servidor.accept();
        System.out.println("Cliente conectado: " + cliente.getInetAddress().getHostAddress());
        ObjectOutputStream saida = new ObjectOutputStream(cliente.getOutputStream());
        saida.flush();
        saida.writeObject(new Date());
        saida.close();
        cliente.close();
      }
    }
    catch(Exception e) {
       System.out.println("Erro: " + e.getMessage());
    }
    finally {
    }
  }
}
```

#### Cliente
```
import java.io.ObjectInputStream;
import java.net.Socket;
import java.util.Date;

public class ClienteTCPBasico {
  public static void main(String[] args) {
    try {
      Socket cliente = new Socket("192.168.0.2",12345);
      ObjectInputStream entrada = new ObjectInputStream(cliente.getInputStream());
      Date data_atual = (Date)entrada.readObject();
      System.out.println("###############################################");
      System.out.println("Data recebida do servidor:" + data_atual.toString());
      System.out.println("###############################################");
      entrada.close();
      System.out.println("Conexão encerrada");
    }
    catch(Exception e) {
      System.out.println("Erro: " + e.getMessage());
    }
  }
}
```
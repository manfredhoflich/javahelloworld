#FROM java:7
#COPY src /home/guru/javahelloworld/src
#WORKDIR /home/guru/javahelloworld/src
#RUN javac /home/guru/javahelloworld/src/HelloWorld.java
#ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
FROM java:7
COPY src /home/guru/javahelloworld/src 
WORKDIR /home/guru/javahelloworld 
RUN mkdir bin 
RUN javac -d bin src/HelloWorld.java 
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
./src/HelloWorld.java: 
public class HelloWorld 
{
	 public static void main (String [] args) 
	{ 
	System.out.println("hello world");
	}
}

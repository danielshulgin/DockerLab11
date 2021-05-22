FROM ubuntu:20.04

COPY bot.sh $HOME/

COPY hello_bot/src/main/java/kpi/acts/appz/bot/hellobot/HelloWorldBot.java $HOME/hello_bot/src/main/java/kpi/acts/appz/bot/hellobot/
COPY telegram_bot/src/main/java/kpi/acts/appz/bot/Bot.java $HOME/telegram_bot/src/main/java/kpi/acts/appz/bot/

COPY hello_bot/pom.xml $HOME/hello_bot/
COPY telegram_bot/pom.xml $HOME/telegram_bot/

COPY pom.xml $HOME/

RUN apt-get update && apt-get install
RUN apt-get install -y maven

CMD /bot.sh

EXPOSE 5000
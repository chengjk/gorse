FROM 172.30.10.185:15000/common/golang:1.22.0

ENV APP_HOME /dianyi/app/gorse
WORKDIR $APP_HOME
COPY . $APP_HOME

RUN go mod download

RUN cd cmd/gorse-worker && \
    CGO_ENABLED=0 go build -ldflags=" \
       -X 'github.com/zhenghaoz/gorse/cmd/version.Version=$(git describe --tags $(git rev-parse HEAD))' \
       -X 'github.com/zhenghaoz/gorse/cmd/version.GitCommit=$(git rev-parse HEAD)' \
       -X 'github.com/zhenghaoz/gorse/cmd/version.BuildTime=$(date)'" .

RUN mv $APP_HOME/cmd/gorse-worker/gorse-worker .
RUN cp $APP_HOME/deploy/master/start.sh .
RUN cp $APP_HOME/deploy/*.toml .
RUN ./gorse-master --version

CMD ["bash", "-c", "$APP_HOME/start.sh"]


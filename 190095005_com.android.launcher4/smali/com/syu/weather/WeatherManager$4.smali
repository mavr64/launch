.class Lcom/syu/weather/WeatherManager$4;
.super Ljava/lang/Object;
.source "WeatherManager.java"

# interfaces
.implements Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/weather/WeatherManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/weather/WeatherManager;


# direct methods
.method constructor <init>(Lcom/syu/weather/WeatherManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/weather/WeatherManager$4;->this$0:Lcom/syu/weather/WeatherManager;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 3
    .param p1, "vaild"    # Z

    .prologue
    .line 213
    const-string v0, "Logs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetWork State == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Net State onChanged vaild = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v0, " start"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gps listenter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 215
    if-eqz p1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$4;->this$0:Lcom/syu/weather/WeatherManager;

    invoke-virtual {v0}, Lcom/syu/weather/WeatherManager;->start()V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isRunning == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syu/weather/WeatherManager$4;->this$0:Lcom/syu/weather/WeatherManager;

    iget-boolean v1, v1, Lcom/syu/weather/WeatherManager;->isRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurLocation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/weather/WeatherManager$4;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v1, v1, Lcom/syu/weather/WeatherManager;->mCurLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$4;->this$0:Lcom/syu/weather/WeatherManager;

    iget-boolean v0, v0, Lcom/syu/weather/WeatherManager;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/weather/WeatherManager$4;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v0, v0, Lcom/syu/weather/WeatherManager;->tmpCity:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/weather/WeatherManager$4;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v0, v0, Lcom/syu/weather/WeatherManager;->tmpCity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const-string v0, " init getWeather == "

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$4;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v1, p0, Lcom/syu/weather/WeatherManager$4;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v1, v1, Lcom/syu/weather/WeatherManager;->tmpCity:Ljava/lang/String;

    iget-object v2, p0, Lcom/syu/weather/WeatherManager$4;->this$0:Lcom/syu/weather/WeatherManager;

    iget-boolean v2, v2, Lcom/syu/weather/WeatherManager;->inChina:Z

    invoke-virtual {v0, v1, v2}, Lcom/syu/weather/WeatherManager;->getWeather(Ljava/lang/String;Z)V

    .line 225
    :cond_0
    :goto_1
    return-void

    .line 214
    :cond_1
    const-string v0, " stop"

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$4;->this$0:Lcom/syu/weather/WeatherManager;

    invoke-virtual {v0}, Lcom/syu/weather/WeatherManager;->stop()V

    goto :goto_1
.end method

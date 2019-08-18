.class Lcom/syu/weather/WeatherManager$5;
.super Landroid/os/AsyncTask;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/weather/WeatherManager;->updateLocation(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/location/Location;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/weather/WeatherManager;

.field private final synthetic val$temptime:J


# direct methods
.method constructor <init>(Lcom/syu/weather/WeatherManager;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iput-wide p2, p0, Lcom/syu/weather/WeatherManager$5;->val$temptime:J

    .line 315
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/syu/weather/WeatherManager$5;->doInBackground([Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/location/Location;)Ljava/lang/String;
    .locals 10
    .param p1, "params"    # [Landroid/location/Location;

    .prologue
    const/4 v8, 0x0

    .line 318
    if-eqz p1, :cond_3

    array-length v3, p1

    if-lez v3, :cond_3

    .line 319
    iget-object v3, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    aget-object v4, p1, v8

    invoke-virtual {v3, v4}, Lcom/syu/weather/WeatherManager;->inChina(Landroid/location/Location;)Z

    move-result v1

    .line 320
    .local v1, "isChina":Z
    const-string v2, ""

    .line 321
    .local v2, "url":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 322
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "http://apk.carsql.com/CarMarke/findAddress.action?longitude=%f&latitude=%f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, p1, v8

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aget-object v7, p1, v8

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 328
    :goto_0
    const/4 v0, 0x0

    .line 329
    .local v0, "city":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 330
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    invoke-virtual {v3, v2}, Lcom/syu/weather/WeatherManager;->geoForSyu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GEO finish city : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    invoke-virtual {v3, v0}, Lcom/syu/weather/WeatherManager;->checkCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    .end local v0    # "city":Ljava/lang/String;
    .end local v1    # "isChina":Z
    .end local v2    # "url":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 324
    .restart local v1    # "isChina":Z
    .restart local v2    # "url":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://maps.google.com/maps/api/geocode/json?latlng="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v8

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 325
    aget-object v4, p1, v8

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sensor=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 324
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 330
    .restart local v0    # "city":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    invoke-virtual {v3, v2}, Lcom/syu/weather/WeatherManager;->geoForGoogle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 335
    .end local v0    # "city":Ljava/lang/String;
    .end local v1    # "isChina":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/syu/weather/WeatherManager$5;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const-wide/32 v8, 0x36ee80

    .line 340
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 341
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cityName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v2, v2, Lcom/syu/weather/WeatherManager;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/syu/weather/WeatherManager;->lastLocationTime:J

    .line 345
    iget-object v1, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v1, v1, Lcom/syu/weather/WeatherManager;->cityName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iput-object p1, v1, Lcom/syu/weather/WeatherManager;->tmpCity:Ljava/lang/String;

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cityName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v2, v2, Lcom/syu/weather/WeatherManager;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tmpCity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v2, v2, Lcom/syu/weather/WeatherManager;->tmpCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x1

    .line 351
    :cond_0
    if-eqz v0, :cond_2

    .line 352
    const-string v1, " city changed getWeather == "

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v2, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v2, v2, Lcom/syu/weather/WeatherManager;->tmpCity:Ljava/lang/String;

    iget-object v3, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-boolean v3, v3, Lcom/syu/weather/WeatherManager;->inChina:Z

    invoke-virtual {v1, v2, v3}, Lcom/syu/weather/WeatherManager;->getWeather(Ljava/lang/String;Z)V

    .line 369
    .end local v0    # "changed":Z
    :cond_1
    :goto_0
    return-void

    .line 354
    .restart local v0    # "changed":Z
    :cond_2
    iget-object v1, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v1, v1, Lcom/syu/weather/WeatherManager;->mCurLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v1, v1, Lcom/syu/weather/WeatherManager;->mCurWeather:Lcom/syu/weather/WeatherDescription;

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v1, v1, Lcom/syu/weather/WeatherManager;->mCurWeather:Lcom/syu/weather/WeatherDescription;

    invoke-virtual {v1}, Lcom/syu/weather/WeatherDescription;->vaild()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "updateLocation delay delay get weather (temptime - LauncherApplication.lastTime) < GET_WEATHER_DELAY = "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    iget-wide v4, p0, Lcom/syu/weather/WeatherManager$5;->val$temptime:J

    iget-object v1, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-wide v6, v1, Lcom/syu/weather/WeatherManager;->lastWeatherTime:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v8

    if-gez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 360
    iget-wide v2, p0, Lcom/syu/weather/WeatherManager$5;->val$temptime:J

    iget-object v1, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-wide v4, v1, Lcom/syu/weather/WeatherManager;->lastWeatherTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-gez v1, :cond_4

    .line 361
    const-string v1, "=============updateLocation delay delay !!!!"

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 364
    :cond_4
    const-string v1, " city weather info outtime getWeather == "

    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v2, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v2, v2, Lcom/syu/weather/WeatherManager;->tmpCity:Ljava/lang/String;

    iget-object v3, p0, Lcom/syu/weather/WeatherManager$5;->this$0:Lcom/syu/weather/WeatherManager;

    iget-boolean v3, v3, Lcom/syu/weather/WeatherManager;->inChina:Z

    invoke-virtual {v1, v2, v3}, Lcom/syu/weather/WeatherManager;->getWeather(Ljava/lang/String;Z)V

    goto :goto_0
.end method

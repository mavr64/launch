.class Lcom/syu/weather/WeatherManager$6;
.super Landroid/os/AsyncTask;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/weather/WeatherManager;->getWeather(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/syu/weather/WeatherDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/weather/WeatherManager;

.field private final synthetic val$china:Z

.field private final synthetic val$city:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/syu/weather/WeatherManager;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iput-boolean p2, p0, Lcom/syu/weather/WeatherManager$6;->val$china:Z

    iput-object p3, p0, Lcom/syu/weather/WeatherManager$6;->val$city:Ljava/lang/String;

    .line 554
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/syu/weather/WeatherDescription;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 557
    if-eqz p1, :cond_2

    array-length v3, p1

    if-lez v3, :cond_2

    .line 558
    const/4 v0, 0x0

    .line 572
    .local v0, "debug":Z
    iget-boolean v3, p0, Lcom/syu/weather/WeatherManager$6;->val$china:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://apk.carsql.com/Weather/CurrentDay?city="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syu/weather/WeatherManager$6;->val$city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "url":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_______getWeather url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 575
    iget-object v3, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    invoke-virtual {v3, v2}, Lcom/syu/weather/WeatherManager;->getContentFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "entry":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Weather \uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 577
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 578
    iget-boolean v3, p0, Lcom/syu/weather/WeatherManager$6;->val$china:Z

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/syu/weather/WeatherDescription;->getWeatherInChina(Ljava/lang/String;)Lcom/syu/weather/WeatherDescription;

    move-result-object v3

    .line 582
    .end local v0    # "debug":Z
    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 573
    .restart local v0    # "debug":Z
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://api.openweathermap.org/data/2.5/weather?q="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syu/weather/WeatherManager$6;->val$city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&APPID=4a87b2f097e39a2cb9c75916073e75a7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 579
    .restart local v1    # "entry":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/syu/weather/WeatherDescription;->getWeather(Ljava/lang/String;)Lcom/syu/weather/WeatherDescription;

    move-result-object v3

    goto :goto_1

    .line 582
    .end local v0    # "debug":Z
    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/syu/weather/WeatherManager$6;->doInBackground([Ljava/lang/String;)Lcom/syu/weather/WeatherDescription;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/syu/weather/WeatherDescription;)V
    .locals 6
    .param p1, "result"    # Lcom/syu/weather/WeatherDescription;

    .prologue
    const/4 v5, 0x0

    .line 586
    iget-object v3, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iput-boolean v5, v3, Lcom/syu/weather/WeatherManager;->isGettingWeather:Z

    .line 587
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/syu/weather/WeatherDescription;->vaild()Z

    move-result v3

    if-nez v3, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v3, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v4, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v4, v4, Lcom/syu/weather/WeatherManager;->tmpCity:Ljava/lang/String;

    iput-object v4, v3, Lcom/syu/weather/WeatherManager;->cityName:Ljava/lang/String;

    .line 589
    iget-object v3, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v3, v3, Lcom/syu/weather/WeatherManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v4, v4, Lcom/syu/weather/WeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 590
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "city"

    iget-object v5, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v5, v5, Lcom/syu/weather/WeatherManager;->cityName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 591
    iget-object v3, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/syu/weather/WeatherManager;->lastWeatherTime:J

    .line 592
    iget-object v3, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iput-object p1, v3, Lcom/syu/weather/WeatherManager;->mCurWeather:Lcom/syu/weather/WeatherDescription;

    .line 593
    iget-object v3, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v3, v3, Lcom/syu/weather/WeatherManager;->weatherListeners:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v3, v3, Lcom/syu/weather/WeatherManager;->weatherListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v3, v3, Lcom/syu/weather/WeatherManager;->weatherListeners:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 596
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 600
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;>;"
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mCurWeather city = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v4, v4, Lcom/syu/weather/WeatherManager;->mCurWeather:Lcom/syu/weather/WeatherDescription;

    iget-object v4, v4, Lcom/syu/weather/WeatherDescription;->city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 601
    const-string v4, "\nmCurWeather.weather = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v4, v4, Lcom/syu/weather/WeatherManager;->mCurWeather:Lcom/syu/weather/WeatherDescription;

    iget-object v4, v4, Lcom/syu/weather/WeatherDescription;->weather:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 602
    const-string v4, "\nmCurWeather.curTem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v4, v4, Lcom/syu/weather/WeatherManager;->mCurWeather:Lcom/syu/weather/WeatherDescription;

    iget-object v4, v4, Lcom/syu/weather/WeatherDescription;->curTem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 603
    const-string v4, "\nmCurWeather.temDescription = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v4, v4, Lcom/syu/weather/WeatherManager;->mCurWeather:Lcom/syu/weather/WeatherDescription;

    iget-object v4, v4, Lcom/syu/weather/WeatherDescription;->temDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 604
    const-string v4, "\nmCurWeather.wind = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v4, v4, Lcom/syu/weather/WeatherManager;->mCurWeather:Lcom/syu/weather/WeatherDescription;

    iget-object v4, v4, Lcom/syu/weather/WeatherDescription;->wind:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 600
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;

    .line 597
    .local v1, "listener":Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;
    iget-object v4, p0, Lcom/syu/weather/WeatherManager$6;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v4, v4, Lcom/syu/weather/WeatherManager;->mCurWeather:Lcom/syu/weather/WeatherDescription;

    invoke-interface {v1, v4}, Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;->onWeatherChanged(Lcom/syu/weather/WeatherDescription;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/syu/weather/WeatherDescription;

    invoke-virtual {p0, p1}, Lcom/syu/weather/WeatherManager$6;->onPostExecute(Lcom/syu/weather/WeatherDescription;)V

    return-void
.end method

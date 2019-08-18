.class public Lcom/syu/weather/DailyWeather;
.super Ljava/lang/Object;
.source "DailyWeather.java"


# instance fields
.field city:Ljava/lang/String;

.field date:Ljava/lang/String;

.field hightemp:Ljava/lang/String;

.field lowtemp:Ljava/lang/String;

.field weather:Ljava/lang/String;

.field weekDay:Ljava/lang/String;

.field windDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDailyWeather(Lorg/json/JSONObject;)Lcom/syu/weather/DailyWeather;
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 141
    new-instance v0, Lcom/syu/weather/DailyWeather;

    invoke-direct {v0}, Lcom/syu/weather/DailyWeather;-><init>()V

    .line 142
    .local v0, "weather":Lcom/syu/weather/DailyWeather;
    if-eqz p0, :cond_0

    .line 143
    const-string v1, "city"

    invoke-static {p0, v1}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syu/weather/DailyWeather;->city:Ljava/lang/String;

    .line 144
    const-string v1, "date"

    invoke-static {p0, v1}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syu/weather/DailyWeather;->date:Ljava/lang/String;

    .line 145
    const-string v1, "hightemp"

    invoke-static {p0, v1}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syu/weather/DailyWeather;->hightemp:Ljava/lang/String;

    .line 146
    const-string v1, "lowtemp"

    invoke-static {p0, v1}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syu/weather/DailyWeather;->lowtemp:Ljava/lang/String;

    .line 147
    const-string v1, "weather"

    invoke-static {p0, v1}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syu/weather/DailyWeather;->weather:Ljava/lang/String;

    .line 148
    const-string v1, "weekDay"

    invoke-static {p0, v1}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syu/weather/DailyWeather;->weekDay:Ljava/lang/String;

    .line 149
    const-string v1, "windDir"

    invoke-static {p0, v1}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/syu/weather/DailyWeather;->windDir:Ljava/lang/String;

    .line 151
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getHightemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->hightemp:Ljava/lang/String;

    return-object v0
.end method

.method public getLowtemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->lowtemp:Ljava/lang/String;

    return-object v0
.end method

.method public getWeather()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->weather:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->weekDay:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->windDir:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->city:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->date:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->hightemp:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->lowtemp:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->weather:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->weekDay:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/syu/weather/DailyWeather;->windDir:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/syu/weather/DailyWeather;->city:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/syu/weather/DailyWeather;->date:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setHightemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "hightemp"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/syu/weather/DailyWeather;->hightemp:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setLowtemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "lowtemp"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/syu/weather/DailyWeather;->lowtemp:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setWeather(Ljava/lang/String;)V
    .locals 0
    .param p1, "weather"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/syu/weather/DailyWeather;->weather:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setWeekDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "weekDay"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/syu/weather/DailyWeather;->weekDay:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setWindDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "windDir"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/syu/weather/DailyWeather;->windDir:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "city :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syu/weather/DailyWeather;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    const-string v2, "\ndate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/DailyWeather;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    const-string v2, "\nhightemp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/DailyWeather;->hightemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    const-string v2, "\nlowtemp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/DailyWeather;->lowtemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    const-string v2, "\nweather:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/DailyWeather;->weather:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    const-string v2, "\nweekDay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/DailyWeather;->weekDay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    const-string v2, "\nwindDir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/DailyWeather;->windDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

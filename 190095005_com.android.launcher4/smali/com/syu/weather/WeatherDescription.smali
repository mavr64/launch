.class public Lcom/syu/weather/WeatherDescription;
.super Ljava/lang/Object;
.source "WeatherDescription.java"


# instance fields
.field carWash:Ljava/lang/String;

.field city:Ljava/lang/String;

.field curTem:Ljava/lang/String;

.field humidity:Ljava/lang/String;

.field icon:Ljava/lang/String;

.field morningExe:Ljava/lang/String;

.field temDescription:Ljava/lang/String;

.field updateTime:Ljava/lang/String;

.field weather:Ljava/lang/String;

.field wind:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWeather(Ljava/lang/String;)Lcom/syu/weather/WeatherDescription;
    .locals 8
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v1, Lcom/syu/weather/WeatherDescription;

    invoke-direct {v1}, Lcom/syu/weather/WeatherDescription;-><init>()V

    .line 182
    .local v1, "info":Lcom/syu/weather/WeatherDescription;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    .local v3, "jsonMsg":Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    const-string v6, "cod"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_3

    .line 184
    const-string v6, "name"

    invoke-static {v3, v6}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/syu/weather/WeatherDescription;->city:Ljava/lang/String;

    .line 185
    const-string v6, "weather"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/syu/weather/JSONUtils;->getObjFromArray(Lorg/json/JSONObject;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 186
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 187
    const-string v6, "description"

    invoke-static {v2, v6}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/syu/weather/WeatherDescription;->weather:Ljava/lang/String;

    .line 189
    :cond_0
    const-string v6, "main"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    const-string v6, "main"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 191
    .local v4, "main":Lorg/json/JSONObject;
    if-eqz v4, :cond_1

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "temp"

    invoke-static {v4, v7}, Lcom/syu/weather/JSONUtils;->getTempName(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u2103"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/syu/weather/WeatherDescription;->curTem:Ljava/lang/String;

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "temp_min"

    invoke-static {v4, v7}, Lcom/syu/weather/JSONUtils;->getTempName(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "temp_max"

    invoke-static {v4, v7}, Lcom/syu/weather/JSONUtils;->getTempName(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u2103"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 193
    iput-object v6, v1, Lcom/syu/weather/WeatherDescription;->temDescription:Ljava/lang/String;

    .line 195
    const-string v6, "humidity"

    invoke-static {v4, v6}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/syu/weather/WeatherDescription;->humidity:Ljava/lang/String;

    .line 199
    .end local v4    # "main":Lorg/json/JSONObject;
    :cond_1
    const-string v6, "wind"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 200
    const-string v6, "wind"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 201
    .local v5, "wind":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 202
    const-string v6, "speed"

    invoke-static {v5, v6}, Lcom/syu/weather/JSONUtils;->getDoubleName(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/syu/weather/WeatherDescription;->wind:Ljava/lang/String;

    .line 206
    .end local v5    # "wind":Lorg/json/JSONObject;
    :cond_2
    const-string v6, "weather"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/syu/weather/JSONUtils;->getObjFromArray(Lorg/json/JSONObject;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 207
    if-eqz v2, :cond_3

    .line 208
    const-string v6, "icon"

    invoke-static {v2, v6}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/syu/weather/WeatherDescription;->icon:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jsonMsg":Lorg/json/JSONObject;
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/syu/weather/WeatherDescription;->vaild()Z

    move-result v6

    if-eqz v6, :cond_4

    .end local v1    # "info":Lcom/syu/weather/WeatherDescription;
    :goto_1
    return-object v1

    .line 211
    .restart local v1    # "info":Lcom/syu/weather/WeatherDescription;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getWeatherInChina(Ljava/lang/String;)Lcom/syu/weather/WeatherDescription;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 219
    new-instance v1, Lcom/syu/weather/WeatherDescription;

    invoke-direct {v1}, Lcom/syu/weather/WeatherDescription;-><init>()V

    .line 221
    .local v1, "info":Lcom/syu/weather/WeatherDescription;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, "jsonMsg":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 223
    const-string v5, "cityName"

    invoke-static {v2, v5}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/syu/weather/WeatherDescription;->city:Ljava/lang/String;

    .line 224
    const-string v5, "DatailWeather"

    invoke-static {v2, v5}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 225
    .local v3, "str":Ljava/lang/String;
    const/4 v4, 0x0

    .line 227
    .local v4, "values":[Ljava/lang/String;
    :try_start_1
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 232
    :goto_0
    if-eqz v4, :cond_1

    .line 233
    :try_start_2
    array-length v5, v4

    if-lt v5, v6, :cond_0

    .line 234
    const/4 v5, 0x0

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/syu/weather/WeatherDescription;->weather:Ljava/lang/String;

    .line 235
    :cond_0
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 236
    const/4 v5, 0x1

    aget-object v5, v4, v5

    iput-object v5, v1, Lcom/syu/weather/WeatherDescription;->curTem:Ljava/lang/String;

    .line 238
    :cond_1
    const-string v5, "tRange"

    invoke-static {v2, v5}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/syu/weather/WeatherDescription;->temDescription:Ljava/lang/String;

    .line 239
    const-string v5, "winds"

    invoke-static {v2, v5}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/syu/weather/WeatherDescription;->wind:Ljava/lang/String;

    .line 240
    const-string v5, "clearCar"

    invoke-static {v2, v5}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/syu/weather/WeatherDescription;->carWash:Ljava/lang/String;

    .line 241
    const-string v5, "humidity"

    invoke-static {v2, v5}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/syu/weather/WeatherDescription;->humidity:Ljava/lang/String;

    .line 242
    const-string v5, "updateTime"

    invoke-static {v2, v5}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/syu/weather/WeatherDescription;->updateTime:Ljava/lang/String;

    .line 243
    const-string v5, "MorningExe"

    invoke-static {v2, v5}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/syu/weather/WeatherDescription;->morningExe:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 248
    .end local v2    # "jsonMsg":Lorg/json/JSONObject;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/syu/weather/WeatherDescription;->vaild()Z

    move-result v5

    if-eqz v5, :cond_3

    .end local v1    # "info":Lcom/syu/weather/WeatherDescription;
    :goto_2
    return-object v1

    .line 228
    .restart local v1    # "info":Lcom/syu/weather/WeatherDescription;
    .restart local v2    # "jsonMsg":Lorg/json/JSONObject;
    .restart local v3    # "str":Ljava/lang/String;
    .restart local v4    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "jsonMsg":Lorg/json/JSONObject;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 248
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getCarWash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->carWash:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCurTem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->curTem:Ljava/lang/String;

    return-object v0
.end method

.method public getHumidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->humidity:Ljava/lang/String;

    return-object v0
.end method

.method public getMorningExe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->morningExe:Ljava/lang/String;

    return-object v0
.end method

.method public getTemDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->temDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWeather()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->weather:Ljava/lang/String;

    return-object v0
.end method

.method public getWind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->wind:Ljava/lang/String;

    return-object v0
.end method

.method public setCarWash(Ljava/lang/String;)V
    .locals 0
    .param p1, "carWash"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/syu/weather/WeatherDescription;->carWash:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/syu/weather/WeatherDescription;->city:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setCurTem(Ljava/lang/String;)V
    .locals 0
    .param p1, "curTem"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/syu/weather/WeatherDescription;->curTem:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setHumidity(Ljava/lang/String;)V
    .locals 0
    .param p1, "humidity"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/syu/weather/WeatherDescription;->humidity:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setMorningExe(Ljava/lang/String;)V
    .locals 0
    .param p1, "morningExe"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/syu/weather/WeatherDescription;->morningExe:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setTemDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "temDescription"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/syu/weather/WeatherDescription;->temDescription:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/syu/weather/WeatherDescription;->updateTime:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setWeather(Ljava/lang/String;)V
    .locals 0
    .param p1, "weather"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/syu/weather/WeatherDescription;->weather:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setWind(Ljava/lang/String;)V
    .locals 0
    .param p1, "wind"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/syu/weather/WeatherDescription;->wind:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "city:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syu/weather/WeatherDescription;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nweather:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/WeatherDescription;->weather:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    const-string v2, "\ncurTem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/WeatherDescription;->curTem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ntemDescription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/WeatherDescription;->temDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    const-string v2, "\nwind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/WeatherDescription;->wind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmorningExe:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/WeatherDescription;->morningExe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    const-string v2, "\ncarWash:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/WeatherDescription;->carWash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nhumidity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/WeatherDescription;->humidity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    const-string v2, "\nupdateTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/weather/WeatherDescription;->updateTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public vaild()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->city:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->weather:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->curTem:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/weather/WeatherDescription;->wind:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

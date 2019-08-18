.class public Lcom/syu/weather/WeatherManager;
.super Ljava/lang/Object;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;,
        Lcom/syu/weather/WeatherManager$RecentWeather;,
        Lcom/syu/weather/WeatherManager$RecentWeatherListener;
    }
.end annotation


# static fields
.field public static final ERROR_CODE:I = -0x1

.field public static final FYT_GEO_URL:Ljava/lang/String; = "http://apk.carsql.com/CarMarke/findAddress.action?longitude=%f&latitude=%f"

.field public static final FYT_RECENTWEATHER_URL:Ljava/lang/String; = "http://apk.carsql.com/Weather/WetherMain?name=%s"

.field public static final GET_CITY_DELAY:I = 0x1d4c0

.field public static final GET_WEATHER_DELAY:I = 0x36ee80

.field public static final GOOGLE_GEO_URL:Ljava/lang/String; = "http://maps.google.com/maps/api/geocode/json?latlng="

.field public static final GOOGLE_URL_ARG:Ljava/lang/String; = "&sensor=true"

.field public static final GOOGLE_URL_LAN:Ljava/lang/String; = "&language=zh-CN"

.field public static final LOCATION_LOC_DELAY:I = 0xea60

.field public static final LOCATION_RUN_DELAY:I = 0xdbba0

.field public static final NONE_CODE:I = -0x2

.field public static final OPEN_WEATHER_APPID:Ljava/lang/String; = "&APPID=4a87b2f097e39a2cb9c75916073e75a7"

.field public static final OPEN_WEATHER_IMG_URL:Ljava/lang/String; = "http://openweathermap.org/img/w/"

.field public static final OPEN_WEATHER_URL:Ljava/lang/String; = "http://api.openweathermap.org/data/2.5/weather?q="

.field public static final SUCCESS_CODE:I = 0x1

.field public static final SYU_WEATHER_URL:Ljava/lang/String; = "http://apk.carsql.com/Weather/CurrentDay?city="

.field public static instance:Lcom/syu/weather/WeatherManager;


# instance fields
.field cityName:Ljava/lang/String;

.field inChina:Z

.field isGettingWeather:Z

.field isRunning:Z

.field lastLocationTime:J

.field lastWeatherTime:J

.field mContext:Landroid/content/Context;

.field mCurLocation:Landroid/location/Location;

.field mCurWeather:Lcom/syu/weather/WeatherDescription;

.field mGpsListener:Landroid/location/LocationListener;

.field mListener:Landroid/location/GpsStatus$Listener;

.field mLocationManager:Landroid/location/LocationManager;

.field mNetListener:Landroid/location/LocationListener;

.field mNetworkCheck:Lcom/syu/weather/NetworkCheck;

.field minDis:I

.field tmpCity:Ljava/lang/String;

.field public weatherListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v3, p0, Lcom/syu/weather/WeatherManager;->isRunning:Z

    .line 78
    iput-wide v4, p0, Lcom/syu/weather/WeatherManager;->lastLocationTime:J

    iput-wide v4, p0, Lcom/syu/weather/WeatherManager;->lastWeatherTime:J

    .line 85
    iput-boolean v3, p0, Lcom/syu/weather/WeatherManager;->inChina:Z

    .line 88
    const/4 v1, 0x3

    iput v1, p0, Lcom/syu/weather/WeatherManager;->minDis:I

    .line 114
    new-instance v1, Lcom/syu/weather/WeatherManager$1;

    invoke-direct {v1, p0}, Lcom/syu/weather/WeatherManager$1;-><init>(Lcom/syu/weather/WeatherManager;)V

    iput-object v1, p0, Lcom/syu/weather/WeatherManager;->mListener:Landroid/location/GpsStatus$Listener;

    .line 126
    new-instance v1, Lcom/syu/weather/WeatherManager$2;

    invoke-direct {v1, p0}, Lcom/syu/weather/WeatherManager$2;-><init>(Lcom/syu/weather/WeatherManager;)V

    iput-object v1, p0, Lcom/syu/weather/WeatherManager;->mNetListener:Landroid/location/LocationListener;

    .line 149
    new-instance v1, Lcom/syu/weather/WeatherManager$3;

    invoke-direct {v1, p0}, Lcom/syu/weather/WeatherManager$3;-><init>(Lcom/syu/weather/WeatherManager;)V

    iput-object v1, p0, Lcom/syu/weather/WeatherManager;->mGpsListener:Landroid/location/LocationListener;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/syu/weather/WeatherManager;->mContext:Landroid/content/Context;

    .line 205
    iget-object v1, p0, Lcom/syu/weather/WeatherManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/syu/weather/WeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 206
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "city"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/syu/weather/WeatherManager;->cityName:Ljava/lang/String;

    iput-object v1, p0, Lcom/syu/weather/WeatherManager;->tmpCity:Ljava/lang/String;

    .line 207
    const-string v1, "inChina"

    iget-boolean v2, p0, Lcom/syu/weather/WeatherManager;->inChina:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/syu/weather/WeatherManager;->inChina:Z

    .line 208
    iget-object v1, p0, Lcom/syu/weather/WeatherManager;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/syu/weather/WeatherManager;->mLocationManager:Landroid/location/LocationManager;

    .line 209
    new-instance v1, Lcom/syu/weather/NetworkCheck;

    iget-object v2, p0, Lcom/syu/weather/WeatherManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/syu/weather/NetworkCheck;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/syu/weather/WeatherManager;->mNetworkCheck:Lcom/syu/weather/NetworkCheck;

    .line 210
    iget-object v1, p0, Lcom/syu/weather/WeatherManager;->mNetworkCheck:Lcom/syu/weather/NetworkCheck;

    new-instance v2, Lcom/syu/weather/WeatherManager$4;

    invoke-direct {v2, p0}, Lcom/syu/weather/WeatherManager$4;-><init>(Lcom/syu/weather/WeatherManager;)V

    invoke-virtual {v1, v2}, Lcom/syu/weather/NetworkCheck;->registerLisenter(Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;)V

    .line 227
    iget-object v1, p0, Lcom/syu/weather/WeatherManager;->mNetworkCheck:Lcom/syu/weather/NetworkCheck;

    iget-object v2, p0, Lcom/syu/weather/WeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/syu/weather/NetworkCheck;->register(Landroid/content/Context;)V

    .line 244
    return-void
.end method

.method static synthetic access$0(Lcom/syu/weather/WeatherManager;ILandroid/location/GpsStatus;)V
    .locals 0

    .prologue
    .line 609
    invoke-direct {p0, p1, p2}, Lcom/syu/weather/WeatherManager;->updateGpsStatus(ILandroid/location/GpsStatus;)V

    return-void
.end method

.method static synthetic access$1(Lcom/syu/weather/WeatherManager;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/syu/weather/WeatherManager;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static getInstance()Lcom/syu/weather/WeatherManager;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/syu/weather/WeatherManager;->instance:Lcom/syu/weather/WeatherManager;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/syu/weather/WeatherManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    sget-object v0, Lcom/syu/weather/WeatherManager;->instance:Lcom/syu/weather/WeatherManager;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/syu/weather/WeatherManager;

    invoke-direct {v0, p0}, Lcom/syu/weather/WeatherManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/syu/weather/WeatherManager;->instance:Lcom/syu/weather/WeatherManager;

    .line 188
    :cond_0
    sget-object v0, Lcom/syu/weather/WeatherManager;->instance:Lcom/syu/weather/WeatherManager;

    return-object v0
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider1"    # Ljava/lang/String;
    .param p2, "provider2"    # Ljava/lang/String;

    .prologue
    .line 411
    if-nez p1, :cond_1

    .line 412
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 414
    :goto_0
    return v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateGpsStatus(ILandroid/location/GpsStatus;)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "status"    # Landroid/location/GpsStatus;

    .prologue
    .line 610
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    .line 611
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    .line 612
    .local v2, "maxSatellites":I
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 613
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    const/4 v0, 0x0

    .line 614
    .local v0, "count":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    if-le v0, v2, :cond_2

    .line 618
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GpsSatellite count = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 620
    .end local v0    # "count":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    .end local v2    # "maxSatellites":I
    :cond_1
    return-void

    .line 615
    .restart local v0    # "count":I
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    .restart local v2    # "maxSatellites":I
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 616
    .local v3, "s":Landroid/location/GpsSatellite;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 12
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-wide/32 v10, 0x1d4c0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 292
    if-nez p1, :cond_0

    .line 371
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0, p1}, Lcom/syu/weather/WeatherManager;->inChina(Landroid/location/Location;)Z

    move-result v0

    .line 295
    .local v0, "ischina":Z
    iget-boolean v4, p0, Lcom/syu/weather/WeatherManager;->inChina:Z

    if-eq v4, v0, :cond_1

    .line 296
    iput-boolean v0, p0, Lcom/syu/weather/WeatherManager;->inChina:Z

    .line 297
    iget-object v4, p0, Lcom/syu/weather/WeatherManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/syu/weather/WeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 298
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "inChina"

    iget-boolean v8, p0, Lcom/syu/weather/WeatherManager;->inChina:Z

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 300
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 301
    .local v2, "temptime":J
    iget-object v4, p0, Lcom/syu/weather/WeatherManager;->mCurLocation:Landroid/location/Location;

    if-eqz v4, :cond_3

    .line 302
    iget-object v4, p0, Lcom/syu/weather/WeatherManager;->mCurWeather:Lcom/syu/weather/WeatherDescription;

    if-eqz v4, :cond_3

    .line 303
    iget-object v4, p0, Lcom/syu/weather/WeatherManager;->mCurWeather:Lcom/syu/weather/WeatherDescription;

    invoke-virtual {v4}, Lcom/syu/weather/WeatherDescription;->vaild()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "updateLocation delay delay get city name (temptime - LauncherApplication.lastTime) < GET_CITY_DELAY = "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    iget-wide v8, p0, Lcom/syu/weather/WeatherManager;->lastLocationTime:J

    sub-long v8, v2, v8

    cmp-long v4, v8, v10

    if-gtz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "delay = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, p0, Lcom/syu/weather/WeatherManager;->lastLocationTime:J

    sub-long v8, v2, v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 304
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 307
    iget-wide v8, p0, Lcom/syu/weather/WeatherManager;->lastLocationTime:J

    sub-long v8, v2, v8

    cmp-long v4, v8, v10

    if-gtz v4, :cond_3

    .line 308
    const-string v4, "=============updateLocation get CITY delay delay !!!!"

    invoke-static {v4}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v4, v6

    .line 306
    goto :goto_1

    .line 313
    :cond_3
    iput-object p1, p0, Lcom/syu/weather/WeatherManager;->mCurLocation:Landroid/location/Location;

    .line 315
    new-instance v4, Lcom/syu/weather/WeatherManager$5;

    invoke-direct {v4, p0, v2, v3}, Lcom/syu/weather/WeatherManager$5;-><init>(Lcom/syu/weather/WeatherManager;J)V

    new-array v5, v5, [Landroid/location/Location;

    .line 370
    iget-object v7, p0, Lcom/syu/weather/WeatherManager;->mCurLocation:Landroid/location/Location;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/syu/weather/WeatherManager$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method


# virtual methods
.method public addOnWeatherChangedListener(Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;

    .prologue
    .line 93
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->weatherListeners:Ljava/util/List;

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/weather/WeatherManager;->weatherListeners:Ljava/util/List;

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->weatherListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->mCurWeather:Lcom/syu/weather/WeatherDescription;

    invoke-interface {p1, v0}, Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;->onWeatherChanged(Lcom/syu/weather/WeatherDescription;)V

    .line 98
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->weatherListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method checkCity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 542
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 547
    :cond_0
    :goto_0
    return-object v0

    .line 543
    :cond_1
    move-object v0, p1

    .line 544
    .local v0, "weatherCity":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const-string v1, "\u5e02"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u5dde"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u53bf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method geoForBaidu(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lcom/syu/weather/WeatherManager;->getContentFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "entry":Ljava/lang/String;
    const/4 v0, 0x0

    .line 471
    .local v0, "city":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 473
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 474
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "OK"

    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 476
    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 477
    .local v3, "ret":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    const-string v4, "addressComponent"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    const-string v4, "addressComponent"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 479
    if-eqz v3, :cond_0

    const-string v4, "city"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 480
    const-string v4, "city"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 488
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "ret":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v0

    .line 485
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method geoForGoogle(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-virtual/range {p0 .. p1}, Lcom/syu/weather/WeatherManager;->getContentFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 493
    .local v4, "entry":Ljava/lang/String;
    const/4 v1, 0x0

    .line 494
    .local v1, "city":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 496
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 497
    .local v6, "json":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    const-string v13, "OK"

    const-string v14, "status"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 498
    const-string v13, "result"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 499
    const-string v13, "result"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 500
    .local v10, "ret":Lorg/json/JSONObject;
    if-eqz v10, :cond_0

    const-string v13, "addressComponent"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 501
    const-string v13, "addressComponent"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 502
    if-eqz v10, :cond_0

    const-string v13, "city"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 503
    const-string v13, "city"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v10    # "ret":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 506
    .restart local v6    # "json":Lorg/json/JSONObject;
    :cond_1
    const-string v13, "results"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 507
    const-string v13, "results"

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Lcom/syu/weather/JSONUtils;->getObjFromArray(Lorg/json/JSONObject;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v9

    .line 508
    .local v9, "result":Lorg/json/JSONObject;
    if-eqz v9, :cond_0

    const-string v13, "address_components"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 509
    const-string v13, "address_components"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 510
    .local v2, "components":Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 511
    .local v3, "count":I
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_0

    .line 512
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 513
    .local v0, "c":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 514
    const-string v13, "types"

    invoke-static {v0, v13}, Lcom/syu/weather/JSONUtils;->jsonToStrArray(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 515
    .local v11, "types":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 516
    .local v7, "locality":Z
    const/4 v8, 0x0

    .line 517
    .local v8, "political":Z
    array-length v14, v11

    const/4 v13, 0x0

    :goto_3
    if-lt v13, v14, :cond_4

    .line 527
    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    const-string v13, "short_name"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 528
    const-string v13, "short_name"

    invoke-static {v0, v13}, Lcom/syu/weather/JSONUtils;->getStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .end local v7    # "locality":Z
    .end local v8    # "political":Z
    .end local v11    # "types":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 510
    .end local v0    # "c":Lorg/json/JSONObject;
    .end local v3    # "count":I
    .end local v5    # "i":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 517
    .restart local v0    # "c":Lorg/json/JSONObject;
    .restart local v3    # "count":I
    .restart local v5    # "i":I
    .restart local v7    # "locality":Z
    .restart local v8    # "political":Z
    .restart local v11    # "types":[Ljava/lang/String;
    :cond_4
    aget-object v12, v11, v13

    .line 518
    .local v12, "val":Ljava/lang/String;
    if-nez v7, :cond_5

    const-string v15, "locality"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 519
    const/4 v7, 0x1

    .line 522
    :cond_5
    if-nez v8, :cond_6

    const-string v15, "political"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_6

    .line 523
    const/4 v8, 0x1

    .line 517
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 535
    .end local v0    # "c":Lorg/json/JSONObject;
    .end local v2    # "components":Lorg/json/JSONArray;
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "locality":Z
    .end local v8    # "political":Z
    .end local v9    # "result":Lorg/json/JSONObject;
    .end local v11    # "types":[Ljava/lang/String;
    .end local v12    # "val":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_0
.end method

.method geoForSyu(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ____GEO url :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0, p1}, Lcom/syu/weather/WeatherManager;->getContentFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "entry":Ljava/lang/String;
    const/4 v0, 0x0

    .line 453
    .local v0, "city":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    :try_start_0
    invoke-static {v1}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 456
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 457
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "OK"

    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    const-string v3, "address"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    const-string v3, "address"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 465
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v0

    .line 462
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method getContentFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 429
    const/4 v4, 0x0

    .line 430
    .local v4, "responseCode":I
    const/4 v5, 0x0

    .line 432
    .local v5, "str":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 433
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 436
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 437
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " getContentFromUrl: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  result responseCode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 439
    const/16 v6, 0xc8

    if-ne v4, v6, :cond_0

    .line 440
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 441
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    const-string v6, "utf-8"

    invoke-static {v0, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 446
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v1    # "get":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v5

    .line 443
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method getWeather(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "china"    # Z

    .prologue
    const/4 v2, 0x1

    .line 551
    iget-boolean v0, p0, Lcom/syu/weather/WeatherManager;->isGettingWeather:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iput-boolean v2, p0, Lcom/syu/weather/WeatherManager;->isGettingWeather:Z

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWeather city = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 554
    new-instance v0, Lcom/syu/weather/WeatherManager$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/syu/weather/WeatherManager$6;-><init>(Lcom/syu/weather/WeatherManager;ZLjava/lang/String;)V

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 606
    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/syu/weather/WeatherManager$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method inChina(Landroid/location/Location;)Z
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 420
    .local v2, "lon":D
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 421
    .local v0, "lat":D
    const-wide v4, 0x4052551eb851eb85L    # 73.33

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x4060e1999999999aL    # 135.05

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    const-wide v4, 0x400c147ae147ae14L    # 3.51

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x404aaa3d70a3d70aL    # 53.33

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    .line 422
    const/4 v4, 0x1

    .line 424
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 18
    .param p1, "newLocation"    # Landroid/location/Location;
    .param p2, "oldLocation"    # Landroid/location/Location;

    .prologue
    .line 374
    if-nez p2, :cond_1

    .line 375
    if-eqz p1, :cond_0

    const/4 v11, 0x1

    .line 407
    :goto_0
    return v11

    .line 375
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v16

    sub-long v12, v14, v16

    .line 380
    .local v12, "timeDelta":J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v11, v14, v16

    if-gez v11, :cond_2

    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3f947ae147ae147bL    # 0.02

    .line 380
    cmpl-double v11, v14, v16

    if-gez v11, :cond_2

    const/4 v9, 0x0

    .line 382
    .local v9, "isRuning":Z
    :goto_1
    const-wide/32 v14, 0xdbba0

    cmp-long v11, v12, v14

    if-lez v11, :cond_3

    const/4 v8, 0x1

    .line 383
    .local v8, "isRunNewer":Z
    :goto_2
    const-wide/32 v14, -0xdbba0

    cmp-long v11, v12, v14

    if-gez v11, :cond_4

    const/4 v7, 0x1

    .line 384
    .local v7, "isOlder":Z
    :goto_3
    const-wide/32 v14, 0xea60

    cmp-long v11, v12, v14

    if-lez v11, :cond_5

    const/4 v6, 0x1

    .line 386
    .local v6, "isNewer":Z
    :goto_4
    if-eqz v8, :cond_6

    .line 387
    const/4 v11, 0x1

    goto :goto_0

    .line 380
    .end local v6    # "isNewer":Z
    .end local v7    # "isOlder":Z
    .end local v8    # "isRunNewer":Z
    .end local v9    # "isRuning":Z
    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    .line 382
    .restart local v9    # "isRuning":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 383
    .restart local v8    # "isRunNewer":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 384
    .restart local v7    # "isOlder":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 388
    .restart local v6    # "isNewer":Z
    :cond_6
    if-eqz v7, :cond_7

    .line 389
    const/4 v11, 0x0

    goto :goto_0

    .line 392
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    sub-float/2addr v11, v14

    float-to-int v2, v11

    .line 393
    .local v2, "accuracyDelta":I
    if-lez v2, :cond_8

    const/4 v4, 0x1

    .line 394
    .local v4, "isLessAccurate":Z
    :goto_5
    if-gez v2, :cond_9

    const/4 v5, 0x1

    .line 395
    .local v5, "isMoreAccurate":Z
    :goto_6
    const/16 v11, 0xc8

    if-le v2, v11, :cond_a

    const/4 v10, 0x1

    .line 397
    .local v10, "isSignificantlyLessAccurate":Z
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v14

    .line 397
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14}, Lcom/syu/weather/WeatherManager;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 400
    .local v3, "isFromSameProvider":Z
    if-eqz v5, :cond_b

    .line 401
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 393
    .end local v3    # "isFromSameProvider":Z
    .end local v4    # "isLessAccurate":Z
    .end local v5    # "isMoreAccurate":Z
    .end local v10    # "isSignificantlyLessAccurate":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 394
    .restart local v4    # "isLessAccurate":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_6

    .line 395
    .restart local v5    # "isMoreAccurate":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_7

    .line 402
    .restart local v3    # "isFromSameProvider":Z
    .restart local v10    # "isSignificantlyLessAccurate":Z
    :cond_b
    if-eqz v6, :cond_c

    if-nez v4, :cond_c

    .line 403
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 404
    :cond_c
    if-eqz v6, :cond_d

    if-nez v10, :cond_d

    if-eqz v3, :cond_d

    .line 405
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 407
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public removeOnWeatherChangedListener(Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->weatherListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->weatherListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->weatherListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->weatherListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestRecentWeathers(Ljava/lang/String;Lcom/syu/weather/WeatherManager$RecentWeatherListener;)V
    .locals 7
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/syu/weather/WeatherManager$RecentWeatherListener;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 659
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "http://apk.carsql.com/Weather/WetherMain?name=%s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/syu/weather/WeatherManager;->checkCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/syu/weather/WeatherManager$7;

    invoke-direct {v1, p0, p2}, Lcom/syu/weather/WeatherManager$7;-><init>(Lcom/syu/weather/WeatherManager;Lcom/syu/weather/WeatherManager$RecentWeatherListener;)V

    new-array v2, v6, [Ljava/lang/String;

    .line 707
    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/syu/weather/WeatherManager$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public start()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x7530

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Net State onChanged mNetworkCheck.hasNet  = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syu/weather/WeatherManager;->mNetworkCheck:Lcom/syu/weather/NetworkCheck;

    iget-boolean v1, v1, Lcom/syu/weather/NetworkCheck;->hasNet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/syu/weather/WeatherManager;->isRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->mNetworkCheck:Lcom/syu/weather/NetworkCheck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->mNetworkCheck:Lcom/syu/weather/NetworkCheck;

    iget-boolean v0, v0, Lcom/syu/weather/NetworkCheck;->hasNet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/syu/weather/WeatherManager;->isRunning:Z

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/syu/weather/WeatherManager;->lastWeatherTime:J

    iput-wide v0, p0, Lcom/syu/weather/WeatherManager;->lastLocationTime:J

    .line 251
    const-string v0, "###############*****start****################"

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lastLocationTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/syu/weather/WeatherManager;->lastLocationTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastLocationTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/syu/weather/WeatherManager;->lastLocationTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 254
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 255
    .local v6, "criteria":Landroid/location/Criteria;
    invoke-virtual {v6, v9}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 256
    invoke-virtual {v6, v8}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 257
    invoke-virtual {v6, v8}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 258
    invoke-virtual {v6, v8}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 259
    invoke-virtual {v6, v9}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 261
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 262
    .local v7, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->mCurLocation:Landroid/location/Location;

    if-nez v0, :cond_2

    if-eqz v7, :cond_2

    .line 263
    invoke-direct {p0, v7}, Lcom/syu/weather/WeatherManager;->updateLocation(Landroid/location/Location;)V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationHelper start GPS Listener mindis = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/syu/weather/WeatherManager;->minDis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget v4, p0, Lcom/syu/weather/WeatherManager;->minDis:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/syu/weather/WeatherManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget v4, p0, Lcom/syu/weather/WeatherManager;->minDis:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/syu/weather/WeatherManager;->mNetListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 275
    :cond_4
    iput-boolean v9, p0, Lcom/syu/weather/WeatherManager;->isRunning:Z

    goto/16 :goto_0
.end method

.method stop()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/syu/weather/WeatherManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/syu/weather/WeatherManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/syu/weather/WeatherManager;->mNetListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/weather/WeatherManager;->isRunning:Z

    .line 289
    return-void

    .line 286
    :catch_0
    move-exception v0

    goto :goto_1

    .line 282
    :catch_1
    move-exception v0

    goto :goto_0
.end method

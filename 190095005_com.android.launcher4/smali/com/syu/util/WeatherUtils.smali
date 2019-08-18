.class public Lcom/syu/util/WeatherUtils;
.super Ljava/lang/Object;
.source "WeatherUtils.java"


# static fields
.field public static final WEATHER_EN:[Ljava/lang/String;

.field public static final WEATHER_ZH:[Ljava/lang/String;

.field public static mWeatherMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final weatherBgPrefix:Ljava/lang/String; = "ic_weather_bg_"

.field private static final weatherImgprefix:Ljava/lang/String; = "fyt_ic_"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/syu/util/WeatherUtils;->mWeatherMap:Ljava/util/HashMap;

    .line 10
    const/16 v1, 0x1a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u7279\u5927\u66b4\u96e8"

    aput-object v2, v1, v4

    const-string v2, "\u5927\u66b4\u96e8"

    aput-object v2, v1, v5

    .line 11
    const-string v2, "\u66b4\u96e8"

    aput-object v2, v1, v6

    const-string v2, "\u5927\u96e8"

    aput-object v2, v1, v7

    const-string v2, "\u4e2d\u96e8"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u5c0f\u96e8"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u51bb\u96e8"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 12
    const-string v3, "\u96f7\u9635\u96e8"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u9635\u96e8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u66b4\u96ea"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u5927\u96ea"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 13
    const-string v3, "\u4e2d\u96ea"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u5c0f\u96ea"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\u96e8\u5939\u96ea"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u9635\u96ea"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 14
    const-string v3, "\u5f3a\u6c99\u5c18\u66b4"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "\u6c99\u5c18\u66b4"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "\u6d6e\u5c18"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "\u626c\u6c99"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "\u96fe"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    .line 15
    const-string v3, "\u9634"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\u95ea\u7535"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "\u6674"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "\u96f7\u9635\u96e8\u4f34\u51b0\u96f9"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    .line 16
    const-string v3, "\u591a\u4e91"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "\u51b0\u96f9"

    aput-object v3, v1, v2

    .line 10
    sput-object v1, Lcom/syu/util/WeatherUtils;->WEATHER_ZH:[Ljava/lang/String;

    .line 18
    const/16 v1, 0x1a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "storm"

    aput-object v2, v1, v4

    const-string v2, "x_heavy_rain"

    aput-object v2, v1, v5

    .line 19
    const-string v2, "b_heavy_rain"

    aput-object v2, v1, v6

    const-string v2, "heavy_rain"

    aput-object v2, v1, v7

    const-string v2, "moderate_rain"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "rain"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "freezing"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 20
    const-string v3, "thunderstorm"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "shower"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "heavy_snow"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "great_snow"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 21
    const-string v3, "moderate_snow"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "snow"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "sleet"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "snow_shower"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 22
    const-string v3, "strong_sandstorm"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "sandstorm"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "dust"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "blowing"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "fog"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    .line 23
    const-string v3, "cloudy_sky"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "lightning"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "sunshine"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "thunderstorm_with_hail"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    .line 24
    const-string v3, "cloudy"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "hail"

    aput-object v3, v1, v2

    .line 18
    sput-object v1, Lcom/syu/util/WeatherUtils;->WEATHER_EN:[Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/syu/util/WeatherUtils;->WEATHER_ZH:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 34
    return-void

    .line 28
    :cond_0
    sget-object v1, Lcom/syu/util/WeatherUtils;->mWeatherMap:Ljava/util/HashMap;

    sget-object v2, Lcom/syu/util/WeatherUtils;->WEATHER_ZH:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 29
    sget-object v3, Lcom/syu/util/WeatherUtils;->WEATHER_EN:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 75
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getWeatherBgId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, -0x1

    .line 56
    .local v0, "imgId":I
    const/4 v1, 0x0

    .line 57
    .local v1, "str":Ljava/lang/String;
    sget-object v4, Lcom/syu/util/WeatherUtils;->WEATHER_ZH:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_1

    .line 64
    :goto_1
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    sget-object v3, Lcom/syu/util/WeatherUtils;->mWeatherMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 66
    .restart local v1    # "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ic_weather_bg_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-static {p0, v3, v4}, Lcom/syu/util/WeatherUtils;->getResid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 69
    :cond_0
    return v0

    .line 57
    :cond_1
    aget-object v2, v4, v3

    .line 58
    .local v2, "weather":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 59
    move-object v1, v2

    .line 60
    goto :goto_1

    .line 57
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getWeatherImagId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, -0x1

    .line 38
    .local v0, "imgId":I
    const/4 v1, 0x0

    .line 39
    .local v1, "str":Ljava/lang/String;
    sget-object v4, Lcom/syu/util/WeatherUtils;->WEATHER_ZH:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_1

    .line 46
    :goto_1
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    sget-object v3, Lcom/syu/util/WeatherUtils;->mWeatherMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "str":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 50
    .restart local v1    # "str":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fyt_ic_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-static {p0, v3, v4}, Lcom/syu/util/WeatherUtils;->getResid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 51
    return v0

    .line 39
    :cond_1
    aget-object v2, v4, v3

    .line 40
    .local v2, "weather":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 41
    move-object v1, v2

    .line 42
    goto :goto_1

    .line 39
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

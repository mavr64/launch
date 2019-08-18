.class public Lcom/syu/weather/WeatherManager$RecentWeather;
.super Ljava/lang/Object;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/weather/WeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentWeather"
.end annotation


# instance fields
.field mWeathers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/syu/weather/DailyWeather;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/syu/weather/WeatherManager$RecentWeather;->mWeathers:Landroid/util/SparseArray;

    .line 627
    return-void
.end method


# virtual methods
.method public getAllWeathers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/syu/weather/DailyWeather;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$RecentWeather;->mWeathers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getDailyWeatherAt(I)Lcom/syu/weather/DailyWeather;
    .locals 1
    .param p1, "day"    # I

    .prologue
    .line 630
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$RecentWeather;->mWeathers:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/weather/WeatherManager$RecentWeather;->mWeathers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 631
    :cond_0
    const/4 v0, 0x0

    .line 632
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$RecentWeather;->mWeathers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/weather/DailyWeather;

    goto :goto_0
.end method

.method public isDataEmpty()Z
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/syu/weather/WeatherManager$RecentWeather;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(ILcom/syu/weather/DailyWeather;)V
    .locals 1
    .param p1, "day"    # I
    .param p2, "weather"    # Lcom/syu/weather/DailyWeather;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$RecentWeather;->mWeathers:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/syu/weather/WeatherManager$RecentWeather;->mWeathers:Landroid/util/SparseArray;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$RecentWeather;->mWeathers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 639
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$RecentWeather;->mWeathers:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$RecentWeather;->mWeathers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

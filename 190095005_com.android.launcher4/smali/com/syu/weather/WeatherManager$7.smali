.class Lcom/syu/weather/WeatherManager$7;
.super Landroid/os/AsyncTask;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/weather/WeatherManager;->requestRecentWeathers(Ljava/lang/String;Lcom/syu/weather/WeatherManager$RecentWeatherListener;)V
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
        "Lcom/syu/weather/DailyWeather;",
        "Lcom/syu/weather/WeatherManager$RecentWeather;",
        ">;"
    }
.end annotation


# instance fields
.field resultCode:I

.field final synthetic this$0:Lcom/syu/weather/WeatherManager;

.field private final synthetic val$listener:Lcom/syu/weather/WeatherManager$RecentWeatherListener;


# direct methods
.method constructor <init>(Lcom/syu/weather/WeatherManager;Lcom/syu/weather/WeatherManager$RecentWeatherListener;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/weather/WeatherManager$7;->this$0:Lcom/syu/weather/WeatherManager;

    iput-object p2, p0, Lcom/syu/weather/WeatherManager$7;->val$listener:Lcom/syu/weather/WeatherManager$RecentWeatherListener;

    .line 663
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 664
    const/4 v0, -0x2

    iput v0, p0, Lcom/syu/weather/WeatherManager$7;->resultCode:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/syu/weather/WeatherManager$RecentWeather;
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    .line 667
    const/4 v7, 0x0

    .line 668
    .local v7, "recentWeather":Lcom/syu/weather/WeatherManager$RecentWeather;
    if-eqz p1, :cond_0

    array-length v10, p1

    if-lez v10, :cond_0

    .line 669
    const/4 v10, 0x0

    aget-object v8, p1, v10

    .line 670
    .local v8, "url":Ljava/lang/String;
    new-instance v7, Lcom/syu/weather/WeatherManager$RecentWeather;

    .end local v7    # "recentWeather":Lcom/syu/weather/WeatherManager$RecentWeather;
    invoke-direct {v7}, Lcom/syu/weather/WeatherManager$RecentWeather;-><init>()V

    .line 671
    .restart local v7    # "recentWeather":Lcom/syu/weather/WeatherManager$RecentWeather;
    iget-object v10, p0, Lcom/syu/weather/WeatherManager$7;->this$0:Lcom/syu/weather/WeatherManager;

    invoke-virtual {v10, v8}, Lcom/syu/weather/WeatherManager;->getContentFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, "entry":Ljava/lang/String;
    const-string v10, "weather"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, " entry :"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 675
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 676
    .local v5, "msg":Lorg/json/JSONObject;
    const-string v10, "states"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "states"

    const/4 v11, -0x1

    invoke-static {v5, v10, v11}, Lcom/syu/weather/JSONUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v13, :cond_1

    .line 677
    const/4 v10, -0x1

    iput v10, p0, Lcom/syu/weather/WeatherManager$7;->resultCode:I

    .line 699
    .end local v3    # "entry":Ljava/lang/String;
    .end local v5    # "msg":Lorg/json/JSONObject;
    .end local v8    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 679
    .restart local v3    # "entry":Ljava/lang/String;
    .restart local v5    # "msg":Lorg/json/JSONObject;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_1
    const-string v10, "dayjson"

    invoke-static {v5, v10}, Lcom/syu/weather/JSONUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 680
    .local v1, "daysjson":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 681
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 682
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    if-lt v4, v0, :cond_3

    .line 691
    .end local v0    # "count":I
    .end local v4    # "index":I
    :cond_2
    invoke-virtual {v7}, Lcom/syu/weather/WeatherManager$RecentWeather;->isDataEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 692
    const/4 v10, 0x1

    iput v10, p0, Lcom/syu/weather/WeatherManager$7;->resultCode:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 694
    .end local v1    # "daysjson":Lorg/json/JSONArray;
    .end local v5    # "msg":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 695
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 683
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "count":I
    .restart local v1    # "daysjson":Lorg/json/JSONArray;
    .restart local v4    # "index":I
    .restart local v5    # "msg":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 684
    .local v6, "obj":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/syu/weather/DailyWeather;->getDailyWeather(Lorg/json/JSONObject;)Lcom/syu/weather/DailyWeather;

    move-result-object v9

    .line 685
    .local v9, "weather":Lcom/syu/weather/DailyWeather;
    invoke-virtual {v9}, Lcom/syu/weather/DailyWeather;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 686
    invoke-virtual {v7, v4, v9}, Lcom/syu/weather/WeatherManager$RecentWeather;->put(ILcom/syu/weather/DailyWeather;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 682
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/syu/weather/WeatherManager$7;->doInBackground([Ljava/lang/String;)Lcom/syu/weather/WeatherManager$RecentWeather;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/syu/weather/WeatherManager$RecentWeather;)V
    .locals 2
    .param p1, "result"    # Lcom/syu/weather/WeatherManager$RecentWeather;

    .prologue
    .line 703
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/syu/weather/WeatherManager$7;->val$listener:Lcom/syu/weather/WeatherManager$RecentWeatherListener;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$7;->val$listener:Lcom/syu/weather/WeatherManager$RecentWeatherListener;

    iget v1, p0, Lcom/syu/weather/WeatherManager$7;->resultCode:I

    invoke-interface {v0, v1, p1}, Lcom/syu/weather/WeatherManager$RecentWeatherListener;->onResult(ILcom/syu/weather/WeatherManager$RecentWeather;)V

    .line 706
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/syu/weather/WeatherManager$RecentWeather;

    invoke-virtual {p0, p1}, Lcom/syu/weather/WeatherManager$7;->onPostExecute(Lcom/syu/weather/WeatherManager$RecentWeather;)V

    return-void
.end method

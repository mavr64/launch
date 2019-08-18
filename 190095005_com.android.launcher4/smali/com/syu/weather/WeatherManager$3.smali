.class Lcom/syu/weather/WeatherManager$3;
.super Ljava/lang/Object;
.source "WeatherManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/weather/WeatherManager;
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
    iput-object p1, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 164
    if-nez p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v1, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v1, v1, Lcom/syu/weather/WeatherManager;->mCurLocation:Landroid/location/Location;

    invoke-virtual {v0, p1, v1}, Lcom/syu/weather/WeatherManager;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v6

    .line 167
    .local v6, "flag":Z
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPSLocationListener -- onLocationChanged  flag == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 168
    if-eqz v6, :cond_0

    .line 169
    const-string v0, "========== onLocationChanged  updateLocation"

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    iput-object p1, v0, Lcom/syu/weather/WeatherManager;->mCurLocation:Landroid/location/Location;

    .line 171
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    iget v0, v0, Lcom/syu/weather/WeatherManager;->minDis:I

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    invoke-virtual {v0}, Lcom/syu/weather/WeatherManager;->stop()V

    .line 173
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    const/16 v1, 0x12c

    iput v1, v0, Lcom/syu/weather/WeatherManager;->minDis:I

    .line 174
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v0, v0, Lcom/syu/weather/WeatherManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "====== LocationHelper start minDis = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    iget v1, v1, Lcom/syu/weather/WeatherManager;->minDis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v0, v0, Lcom/syu/weather/WeatherManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x2

    iget-object v4, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    iget v4, v4, Lcom/syu/weather/WeatherManager;->minDis:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v5, v5, Lcom/syu/weather/WeatherManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v1, p0, Lcom/syu/weather/WeatherManager$3;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v1, v1, Lcom/syu/weather/WeatherManager;->mCurLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/syu/weather/WeatherManager;->access$1(Lcom/syu/weather/WeatherManager;Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 160
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 152
    return-void
.end method

.class Lcom/syu/weather/WeatherManager$1;
.super Ljava/lang/Object;
.source "WeatherManager.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


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

.field time:J


# direct methods
.method constructor <init>(Lcom/syu/weather/WeatherManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/weather/WeatherManager$1;->this$0:Lcom/syu/weather/WeatherManager;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 6
    .param p1, "event"    # I

    .prologue
    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/syu/weather/WeatherManager$1;->time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/syu/weather/WeatherManager$1;->time:J

    .line 120
    iget-object v1, p0, Lcom/syu/weather/WeatherManager$1;->this$0:Lcom/syu/weather/WeatherManager;

    iget-object v1, v1, Lcom/syu/weather/WeatherManager;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 121
    .local v0, "status":Landroid/location/GpsStatus;
    iget-object v1, p0, Lcom/syu/weather/WeatherManager$1;->this$0:Lcom/syu/weather/WeatherManager;

    invoke-static {v1, p1, v0}, Lcom/syu/weather/WeatherManager;->access$0(Lcom/syu/weather/WeatherManager;ILandroid/location/GpsStatus;)V

    .line 123
    .end local v0    # "status":Landroid/location/GpsStatus;
    :cond_0
    return-void
.end method

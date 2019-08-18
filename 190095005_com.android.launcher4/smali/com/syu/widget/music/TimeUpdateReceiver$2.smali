.class Lcom/syu/widget/music/TimeUpdateReceiver$2;
.super Ljava/lang/Object;
.source "TimeUpdateReceiver.java"

# interfaces
.implements Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/widget/music/TimeUpdateReceiver;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onWeatherChanged(Lcom/syu/weather/WeatherDescription;)V
    .locals 1
    .param p1, "weather"    # Lcom/syu/weather/WeatherDescription;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/syu/weather/WeatherDescription;->vaild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    iput-object p1, v0, Lcom/android/launcher4/Launcher;->mCurDescription:Lcom/syu/weather/WeatherDescription;

    .line 107
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-static {v0}, Lcom/syu/widget/music/Widget;->update(Landroid/content/Context;)V

    .line 109
    :cond_0
    return-void
.end method

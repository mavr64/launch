.class public Lcom/syu/widget/music/TimeUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeUpdateReceiver.java"


# static fields
.field public static final SHOW_TIME:Ljava/lang/String; = "com.syu.show_time"

.field private static final TAG:Ljava/lang/String; = "TimeUpdateReceiver"

.field static mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/syu/widget/music/Widget;",
            ">;"
        }
    .end annotation
.end field

.field private static timeUpdate:Lcom/syu/widget/music/TimeUpdateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/syu/widget/music/TimeUpdateReceiver;->mWidgets:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static addWidget(Lcom/syu/widget/music/Widget;)V
    .locals 1
    .param p0, "widget"    # Lcom/syu/widget/music/Widget;

    .prologue
    .line 71
    sget-object v0, Lcom/syu/widget/music/TimeUpdateReceiver;->mWidgets:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/syu/widget/music/TimeUpdateReceiver;->mWidgets:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    return-void
.end method

.method public static register(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-class v3, Lcom/syu/widget/music/TimeUpdateReceiver;

    monitor-enter v3

    .line 84
    :try_start_0
    sget-object v2, Lcom/syu/widget/music/TimeUpdateReceiver;->timeUpdate:Lcom/syu/widget/music/TimeUpdateReceiver;

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Lcom/syu/widget/music/TimeUpdateReceiver;

    invoke-direct {v2}, Lcom/syu/widget/music/TimeUpdateReceiver;-><init>()V

    sput-object v2, Lcom/syu/widget/music/TimeUpdateReceiver;->timeUpdate:Lcom/syu/widget/music/TimeUpdateReceiver;

    .line 89
    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 90
    .local v1, "manager":Landroid/appwidget/AppWidgetManager;
    invoke-static {p0, v1}, Lcom/syu/widget/music/Widget;->check(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v2, "com.syu.show_time"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    sget-object v2, Lcom/syu/widget/music/TimeUpdateReceiver;->timeUpdate:Lcom/syu/widget/music/TimeUpdateReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 101
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher4/Launcher;->manager:Lcom/syu/weather/WeatherManager;

    .line 102
    new-instance v3, Lcom/syu/widget/music/TimeUpdateReceiver$2;

    invoke-direct {v3}, Lcom/syu/widget/music/TimeUpdateReceiver$2;-><init>()V

    invoke-virtual {v2, v3}, Lcom/syu/weather/WeatherManager;->addOnWeatherChangedListener(Lcom/syu/weather/WeatherManager$OnWeatherChangedListener;)V

    .line 112
    :cond_1
    return-void

    .line 83
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "manager":Landroid/appwidget/AppWidgetManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static removeWidget(Lcom/syu/widget/music/Widget;)V
    .locals 1
    .param p0, "widget"    # Lcom/syu/widget/music/Widget;

    .prologue
    .line 77
    sget-object v0, Lcom/syu/widget/music/TimeUpdateReceiver;->mWidgets:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/syu/widget/music/TimeUpdateReceiver;->mWidgets:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public static unregister(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const-class v1, Lcom/syu/widget/music/TimeUpdateReceiver;

    monitor-enter v1

    .line 116
    :try_start_0
    sget-object v0, Lcom/syu/widget/music/TimeUpdateReceiver;->timeUpdate:Lcom/syu/widget/music/TimeUpdateReceiver;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/syu/widget/music/TimeUpdateReceiver;->timeUpdate:Lcom/syu/widget/music/TimeUpdateReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/syu/widget/music/TimeUpdateReceiver;->timeUpdate:Lcom/syu/widget/music/TimeUpdateReceiver;

    .line 115
    :cond_0
    monitor-exit v1

    .line 121
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/syu/widget/music/TimeUpdateReceiver$1;

    invoke-direct {v1, p0}, Lcom/syu/widget/music/TimeUpdateReceiver$1;-><init>(Lcom/syu/widget/music/TimeUpdateReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    return-void
.end method

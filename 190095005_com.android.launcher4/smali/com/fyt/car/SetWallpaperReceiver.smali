.class public Lcom/fyt/car/SetWallpaperReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SetWallpaperReceiver.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyt/car/SetWallpaperReceiver;->handler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/fyt/car/SetWallpaperReceiver$1;

    invoke-direct {v0, p0}, Lcom/fyt/car/SetWallpaperReceiver$1;-><init>(Lcom/fyt/car/SetWallpaperReceiver;)V

    iput-object v0, p0, Lcom/fyt/car/SetWallpaperReceiver;->runnable:Ljava/lang/Runnable;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/fyt/car/SetWallpaperReceiver;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fyt/car/SetWallpaperReceiver;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "msg"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 25
    .local v3, "pak":Ljava/lang/String;
    sget-object v4, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 26
    .local v0, "a":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "com.android.launcher"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "launcherpackagename":Ljava/lang/String;
    const-string v4, "android.intent.LAUNCHER.LauncherChoose"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    iget-object v4, p0, Lcom/fyt/car/SetWallpaperReceiver;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/fyt/car/SetWallpaperReceiver;->runnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    :cond_0
    return-void
.end method

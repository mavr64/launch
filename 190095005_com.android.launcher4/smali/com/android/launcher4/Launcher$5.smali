.class Lcom/android/launcher4/Launcher$5;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$5;->this$0:Lcom/android/launcher4/Launcher;

    .line 1785
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;
    .locals 1

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5;->this$0:Lcom/android/launcher4/Launcher;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 1789
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1790
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.fyt.systemui.remove"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1791
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1792
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "pkg"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1793
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "com.syu.music"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1794
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/fyt/car/MusicService;->state:Ljava/lang/Boolean;

    .line 1795
    iget-object v3, p0, Lcom/android/launcher4/Launcher$5;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v3, v3, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/launcher4/Launcher$5$1;

    invoke-direct {v4, p0}, Lcom/android/launcher4/Launcher$5$1;-><init>(Lcom/android/launcher4/Launcher$5;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1865
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1811
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v3, "com.autonavi.amapauto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1812
    iget-object v3, p0, Lcom/android/launcher4/Launcher$5;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v3, v3, Lcom/android/launcher4/Launcher;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/launcher4/Launcher$5$2;

    invoke-direct {v4, p0}, Lcom/android/launcher4/Launcher$5$2;-><init>(Lcom/android/launcher4/Launcher$5;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

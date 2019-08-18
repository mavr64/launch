.class public Lcom/syu/weather/NetworkCheck;
.super Landroid/content/BroadcastReceiver;
.source "NetworkCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;
    }
.end annotation


# static fields
.field public static final DELAY:I = 0x7530


# instance fields
.field hasNet:Z

.field isRegister:Z

.field mContext:Landroid/content/Context;

.field mLisenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/weather/NetworkCheck;->isRegister:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/weather/NetworkCheck;->mLisenters:Ljava/util/List;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/weather/NetworkCheck;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public isConnectionAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p1, "cotext"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, "isConnection":Z
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 86
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 88
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 92
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    const/4 v2, 0x1

    .line 98
    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 95
    .restart local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/syu/weather/NetworkCheck;->isConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 47
    .local v0, "hasNet":Z
    iget-boolean v3, p0, Lcom/syu/weather/NetworkCheck;->hasNet:Z

    if-eq v0, v3, :cond_0

    .line 48
    iput-boolean v0, p0, Lcom/syu/weather/NetworkCheck;->hasNet:Z

    .line 49
    const-string v3, " Network onChanged == 0010010"

    invoke-static {v3}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/syu/weather/NetworkCheck;->mLisenters:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/syu/weather/NetworkCheck;->mLisenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/syu/weather/NetworkCheck;->mLisenters:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .local v2, "lisenters":Ljava/util/List;, "Ljava/util/List<Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 58
    .end local v2    # "lisenters":Ljava/util/List;, "Ljava/util/List<Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;>;"
    :cond_0
    return-void

    .line 53
    .restart local v2    # "lisenters":Ljava/util/List;, "Ljava/util/List<Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;

    .line 54
    .local v1, "lisenter":Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;
    iget-boolean v4, p0, Lcom/syu/weather/NetworkCheck;->hasNet:Z

    invoke-interface {v1, v4}, Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;->onChanged(Z)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 66
    .local v1, "sContext":Landroid/content/Context;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/syu/weather/NetworkCheck;->isRegister:Z

    .line 73
    return-void
.end method

.method public registerLisenter(Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;)V
    .locals 1
    .param p1, "lisenter"    # Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/syu/weather/NetworkCheck;->mLisenters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/weather/NetworkCheck;->mLisenters:Ljava/util/List;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/syu/weather/NetworkCheck;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/syu/weather/NetworkCheck;->isConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/syu/weather/NetworkCheck;->hasNet:Z

    .line 106
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/syu/weather/NetworkCheck;->mLisenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/syu/weather/NetworkCheck;->mLisenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-boolean v0, p0, Lcom/syu/weather/NetworkCheck;->hasNet:Z

    invoke-interface {p1, v0}, Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;->onChanged(Z)V

    .line 110
    :cond_1
    return-void
.end method

.method public unRegisterLisenter(Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;)V
    .locals 1
    .param p1, "lisenter"    # Lcom/syu/weather/NetworkCheck$OnNetworkStateChangeLisenter;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/syu/weather/NetworkCheck;->mLisenters:Ljava/util/List;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/syu/weather/NetworkCheck;->mLisenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/syu/weather/NetworkCheck;->mLisenters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    iget-boolean v1, p0, Lcom/syu/weather/NetworkCheck;->isRegister:Z

    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, "sContext":Landroid/content/Context;
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/syu/weather/NetworkCheck;->isRegister:Z

    goto :goto_0
.end method

.class public Lcom/fyt/car/BtavService;
.super Landroid/app/Service;
.source "BtavService.java"


# instance fields
.field public mBtavAristName:Ljava/lang/String;

.field public mBtavMusicName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 26
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "btav"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "btav"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const-string v0, "btav"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyt/car/BtavService;->mBtavMusicName:Ljava/lang/String;

    .line 30
    :cond_0
    const-string v0, "btav_art"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "btav_art"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    const-string v0, "btav_art"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyt/car/BtavService;->mBtavAristName:Ljava/lang/String;

    .line 34
    :cond_1
    sget-object v0, Lcom/fyt/car/LauncherNotify;->NOTIFIER_BTAV:Lcom/fyt/car/DataNotifier;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 35
    iget-object v3, p0, Lcom/fyt/car/BtavService;->mBtavMusicName:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fyt/car/BtavService;->mBtavAristName:Ljava/lang/String;

    aput-object v3, v4, v2

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/fyt/car/DataNotifier;->set([I[J[F[Ljava/lang/String;[B)V

    .line 38
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

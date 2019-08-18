.class public Lcom/syu/widget/music/RestartService;
.super Landroid/app/Service;
.source "RestartService.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field run:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/syu/widget/music/RestartService;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance v0, Lcom/syu/widget/music/RestartService$1;

    invoke-direct {v0, p0}, Lcom/syu/widget/music/RestartService$1;-><init>(Lcom/syu/widget/music/RestartService;)V

    iput-object v0, p0, Lcom/syu/widget/music/RestartService;->run:Ljava/lang/Runnable;

    .line 8
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 31
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

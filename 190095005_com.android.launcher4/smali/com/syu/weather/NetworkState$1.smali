.class Lcom/syu/weather/NetworkState$1;
.super Ljava/lang/Object;
.source "NetworkState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/weather/NetworkState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/weather/NetworkState;


# direct methods
.method constructor <init>(Lcom/syu/weather/NetworkState;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/weather/NetworkState$1;->this$0:Lcom/syu/weather/NetworkState;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 57
    const-string v0, "network ping"

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/syu/weather/NetworkState$1;->this$0:Lcom/syu/weather/NetworkState;

    invoke-virtual {v0}, Lcom/syu/weather/NetworkState;->ping()Z

    .line 60
    iget-object v0, p0, Lcom/syu/weather/NetworkState$1;->this$0:Lcom/syu/weather/NetworkState;

    invoke-virtual {v0}, Lcom/syu/weather/NetworkState;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/syu/weather/NetworkState$1;->this$0:Lcom/syu/weather/NetworkState;

    iget-object v0, v0, Lcom/syu/weather/NetworkState;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/syu/weather/NetworkState$1;->this$0:Lcom/syu/weather/NetworkState;

    iget-object v0, v0, Lcom/syu/weather/NetworkState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/syu/weather/NetworkState$1;->this$0:Lcom/syu/weather/NetworkState;

    iget-object v1, v1, Lcom/syu/weather/NetworkState;->checkNetwork:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    iget-object v0, p0, Lcom/syu/weather/NetworkState$1;->this$0:Lcom/syu/weather/NetworkState;

    iget-object v0, v0, Lcom/syu/weather/NetworkState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/syu/weather/NetworkState$1;->this$0:Lcom/syu/weather/NetworkState;

    iget-object v1, v1, Lcom/syu/weather/NetworkState;->checkNetwork:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/syu/weather/NetworkState$1;->this$0:Lcom/syu/weather/NetworkState;

    iget v2, v2, Lcom/syu/weather/NetworkState;->space:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/syu/weather/NetworkState$1;->this$0:Lcom/syu/weather/NetworkState;

    iget-object v0, v0, Lcom/syu/weather/NetworkState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/syu/weather/NetworkState$1;->this$0:Lcom/syu/weather/NetworkState;

    iget-object v1, v1, Lcom/syu/weather/NetworkState;->checkNetwork:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

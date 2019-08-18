.class Lcom/syu/widget/music/RestartService$1;
.super Ljava/lang/Object;
.source "RestartService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/widget/music/RestartService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/widget/music/RestartService;


# direct methods
.method constructor <init>(Lcom/syu/widget/music/RestartService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/widget/music/RestartService$1;->this$0:Lcom/syu/widget/music/RestartService;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 13
    iget-object v0, p0, Lcom/syu/widget/music/RestartService$1;->this$0:Lcom/syu/widget/music/RestartService;

    iget-object v0, v0, Lcom/syu/widget/music/RestartService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/syu/widget/music/RestartService$1;->this$0:Lcom/syu/widget/music/RestartService;

    iget-object v1, v1, Lcom/syu/widget/music/RestartService;->run:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lcom/syu/widget/music/RestartService$1;->this$0:Lcom/syu/widget/music/RestartService;

    iget-object v0, v0, Lcom/syu/widget/music/RestartService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/syu/widget/music/RestartService$1;->this$0:Lcom/syu/widget/music/RestartService;

    iget-object v1, v1, Lcom/syu/widget/music/RestartService;->run:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    return-void
.end method

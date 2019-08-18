.class Lcom/syu/log/LogPreview$1;
.super Ljava/lang/Object;
.source "LogPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/log/LogPreview;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/log/LogPreview;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/syu/log/LogPreview;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/log/LogPreview$1;->this$0:Lcom/syu/log/LogPreview;

    iput-object p2, p0, Lcom/syu/log/LogPreview$1;->val$handler:Landroid/os/Handler;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/syu/log/LogPreview$1;)Lcom/syu/log/LogPreview;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/syu/log/LogPreview$1;->this$0:Lcom/syu/log/LogPreview;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/syu/log/LogPreview$1;->this$0:Lcom/syu/log/LogPreview;

    invoke-virtual {v0}, Lcom/syu/log/LogPreview;->checkDebug()V

    .line 84
    const-string v0, "Logs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDebug === "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/syu/log/LogPreview$1;->this$0:Lcom/syu/log/LogPreview;

    iget-boolean v2, v2, Lcom/syu/log/LogPreview;->mDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/syu/log/LogPreview$1;->this$0:Lcom/syu/log/LogPreview;

    iget-object v0, v0, Lcom/syu/log/LogPreview;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/syu/log/LogPreview$1$1;

    invoke-direct {v1, p0}, Lcom/syu/log/LogPreview$1$1;-><init>(Lcom/syu/log/LogPreview$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    iget-object v0, p0, Lcom/syu/log/LogPreview$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    iget-object v0, p0, Lcom/syu/log/LogPreview$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method

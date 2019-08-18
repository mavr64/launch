.class Lcom/syu/remote/RemoteTools$1;
.super Ljava/lang/Object;
.source "RemoteTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/remote/RemoteTools;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/remote/RemoteTools;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/syu/remote/RemoteTools;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/remote/RemoteTools$1;->this$0:Lcom/syu/remote/RemoteTools;

    iput-object p2, p0, Lcom/syu/remote/RemoteTools$1;->val$handler:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/syu/remote/RemoteTools$1;->this$0:Lcom/syu/remote/RemoteTools;

    iget-boolean v0, v0, Lcom/syu/remote/RemoteTools;->autoConn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/remote/RemoteTools$1;->this$0:Lcom/syu/remote/RemoteTools;

    iget-object v0, v0, Lcom/syu/remote/RemoteTools;->mToolkit:Lcom/syu/ipc/IRemoteToolkit;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/syu/remote/RemoteTools$1;->this$0:Lcom/syu/remote/RemoteTools;

    invoke-virtual {v0}, Lcom/syu/remote/RemoteTools;->bind()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/syu/remote/RemoteTools$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

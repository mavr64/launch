.class Lcom/syu/remote/RemoteTools$2;
.super Ljava/lang/Object;
.source "RemoteTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/remote/RemoteTools;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/remote/RemoteTools;

.field private final synthetic val$module:I


# direct methods
.method constructor <init>(Lcom/syu/remote/RemoteTools;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/remote/RemoteTools$2;->this$0:Lcom/syu/remote/RemoteTools;

    iput p2, p0, Lcom/syu/remote/RemoteTools$2;->val$module:I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 98
    iget-object v3, p0, Lcom/syu/remote/RemoteTools$2;->this$0:Lcom/syu/remote/RemoteTools;

    iget-object v3, v3, Lcom/syu/remote/RemoteTools;->mToolkit:Lcom/syu/ipc/IRemoteToolkit;

    if-nez v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/syu/remote/RemoteTools$2;->this$0:Lcom/syu/remote/RemoteTools;

    iget-object v3, v3, Lcom/syu/remote/RemoteTools;->mToolkit:Lcom/syu/ipc/IRemoteToolkit;

    iget v4, p0, Lcom/syu/remote/RemoteTools$2;->val$module:I

    invoke-interface {v3, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v2

    .line 104
    .local v2, "sModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v2, :cond_0

    .line 105
    iget-object v3, p0, Lcom/syu/remote/RemoteTools$2;->this$0:Lcom/syu/remote/RemoteTools;

    iget-object v3, v3, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    iget v4, p0, Lcom/syu/remote/RemoteTools$2;->val$module:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syu/remote/Registrar;

    .line 106
    .local v1, "registrar":Lcom/syu/remote/Registrar;
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1, v2}, Lcom/syu/remote/Registrar;->setModule(Lcom/syu/ipc/IRemoteModule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v1    # "registrar":Lcom/syu/remote/Registrar;
    .end local v2    # "sModule":Lcom/syu/ipc/IRemoteModule;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

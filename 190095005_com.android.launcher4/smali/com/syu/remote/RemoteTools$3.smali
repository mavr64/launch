.class Lcom/syu/remote/RemoteTools$3;
.super Ljava/lang/Object;
.source "RemoteTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/remote/RemoteTools;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/remote/RemoteTools;


# direct methods
.method constructor <init>(Lcom/syu/remote/RemoteTools;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/remote/RemoteTools$3;->this$0:Lcom/syu/remote/RemoteTools;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/syu/remote/RemoteTools$3;->this$0:Lcom/syu/remote/RemoteTools;

    iget-object v3, v3, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 135
    return-void

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/syu/remote/RemoteTools$3;->this$0:Lcom/syu/remote/RemoteTools;

    iget-object v3, v3, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 131
    .local v1, "key":I
    iget-object v3, p0, Lcom/syu/remote/RemoteTools$3;->this$0:Lcom/syu/remote/RemoteTools;

    iget-object v3, v3, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/syu/remote/Registrar;

    .line 132
    .local v2, "registrar":Lcom/syu/remote/Registrar;
    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {v2}, Lcom/syu/remote/Registrar;->unRegisterCode()V

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

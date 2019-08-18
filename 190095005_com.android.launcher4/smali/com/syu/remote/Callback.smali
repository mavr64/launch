.class public Lcom/syu/remote/Callback;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/remote/Callback$Lisenter;,
        Lcom/syu/remote/Callback$Massage;,
        Lcom/syu/remote/Callback$OnRefreshLisenter;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field mLisenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/syu/remote/Callback$Lisenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/syu/ipc/IModuleCallback$Stub;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/remote/Callback;->mLisenters:Ljava/util/List;

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/syu/remote/Callback;->mHandler:Landroid/os/Handler;

    .line 19
    return-void
.end method


# virtual methods
.method addOnRefreshLisenter(Lcom/syu/remote/Callback$OnRefreshLisenter;I)V
    .locals 2
    .param p1, "mLisenter"    # Lcom/syu/remote/Callback$OnRefreshLisenter;
    .param p2, "update"    # I

    .prologue
    .line 39
    new-instance v0, Lcom/syu/remote/Callback$Lisenter;

    invoke-direct {v0, p0, p1, p2}, Lcom/syu/remote/Callback$Lisenter;-><init>(Lcom/syu/remote/Callback;Lcom/syu/remote/Callback$OnRefreshLisenter;I)V

    .line 40
    .local v0, "lisenter":Lcom/syu/remote/Callback$Lisenter;
    iget-object v1, p0, Lcom/syu/remote/Callback;->mLisenters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/syu/remote/Callback;->mLisenters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    return-void
.end method

.method post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/syu/remote/Callback;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/remote/Callback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :cond_0
    return-void
.end method

.method removeOnRefreshLisenter(Lcom/syu/remote/Callback$OnRefreshLisenter;)V
    .locals 4
    .param p1, "mLisenter"    # Lcom/syu/remote/Callback$OnRefreshLisenter;

    .prologue
    .line 52
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/syu/remote/Callback;->mLisenters:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/syu/remote/Callback$Lisenter;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    const/4 v0, 0x0

    .line 62
    return-void

    .line 55
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syu/remote/Callback$Lisenter;

    .line 56
    .local v1, "lisenter":Lcom/syu/remote/Callback$Lisenter;
    iget-object v2, v1, Lcom/syu/remote/Callback$Lisenter;->lisenter:Lcom/syu/remote/Callback$OnRefreshLisenter;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/syu/remote/Callback;->mLisenters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/syu/remote/Callback;->mLisenters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public update(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/syu/remote/Callback$Massage;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/syu/remote/Callback$Massage;-><init>(Lcom/syu/remote/Callback;I[I[F[Ljava/lang/String;)V

    .line 29
    .local v0, "state":Lcom/syu/remote/Callback$Massage;
    invoke-virtual {v0}, Lcom/syu/remote/Callback$Massage;->refresh()V

    .line 30
    return-void
.end method

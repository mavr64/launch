.class public Lcom/syu/remote/RemoteTools;
.super Ljava/lang/Object;
.source "RemoteTools.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final CONN_DELAY_TIME_MAX:I

.field final CONN_DELAY_TIME_MIN:I

.field action:Ljava/lang/String;

.field autoConn:Z

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mModules:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/syu/remote/Registrar;",
            ">;"
        }
    .end annotation
.end field

.field mToolkit:Lcom/syu/ipc/IRemoteToolkit;

.field pkgName:Ljava/lang/String;

.field workThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0, v0}, Lcom/syu/remote/RemoteTools;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/syu/remote/RemoteTools;->CONN_DELAY_TIME_MAX:I

    .line 25
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/syu/remote/RemoteTools;->CONN_DELAY_TIME_MIN:I

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "remote connection"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/syu/remote/RemoteTools;->workThread:Landroid/os/HandlerThread;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syu/remote/RemoteTools;->autoConn:Z

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/remote/RemoteTools;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/syu/remote/RemoteTools;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/syu/remote/RemoteTools;->workThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/syu/remote/RemoteTools;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p2, p0, Lcom/syu/remote/RemoteTools;->action:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/syu/remote/RemoteTools;->pkgName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public varargs addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V
    .locals 2
    .param p1, "module"    # I
    .param p2, "lisenter"    # Lcom/syu/remote/Callback$OnRefreshLisenter;
    .param p3, "codes"    # [I

    .prologue
    .line 191
    iget-object v1, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/remote/Registrar;

    .line 193
    .local v0, "sModule":Lcom/syu/remote/Registrar;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p2, p3}, Lcom/syu/remote/Registrar;->addOnRefreshLisenter(Lcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    .line 196
    :cond_0
    return-void
.end method

.method public bind()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 54
    iput-boolean v3, p0, Lcom/syu/remote/RemoteTools;->autoConn:Z

    .line 55
    iget-object v2, p0, Lcom/syu/remote/RemoteTools;->action:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/syu/remote/RemoteTools;->action:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    const-string v2, "com.syu.ms.toolkit"

    iput-object v2, p0, Lcom/syu/remote/RemoteTools;->action:Ljava/lang/String;

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/syu/remote/RemoteTools;->pkgName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/syu/remote/RemoteTools;->pkgName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    :cond_2
    const-string v2, "com.syu.ms"

    iput-object v2, p0, Lcom/syu/remote/RemoteTools;->pkgName:Ljava/lang/String;

    .line 63
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/syu/remote/RemoteTools;->action:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/syu/remote/RemoteTools;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Lcom/syu/remote/RemoteTools;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 67
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/syu/remote/RemoteTools$1;

    invoke-direct {v2, p0, v0}, Lcom/syu/remote/RemoteTools$1;-><init>(Lcom/syu/remote/RemoteTools;Landroid/os/Handler;)V

    .line 75
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x5dc

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x1f4

    int-to-long v4, v3

    .line 67
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    return-void
.end method

.method public connected()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/syu/remote/RemoteTools;->mToolkit:Lcom/syu/ipc/IRemoteToolkit;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs enableModule(I[I)V
    .locals 2
    .param p1, "module"    # I
    .param p2, "codes"    # [I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    new-instance v1, Lcom/syu/remote/RemoteTools$5;

    invoke-direct {v1, p0, p2}, Lcom/syu/remote/RemoteTools$5;-><init>(Lcom/syu/remote/RemoteTools;[I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    return-void
.end method

.method public getFlt(IFII)F
    .locals 3
    .param p1, "module"    # I
    .param p2, "def"    # F
    .param p3, "code"    # I
    .param p4, "params"    # I

    .prologue
    .line 277
    iget-object v1, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/remote/Registrar;

    .line 278
    .local v0, "sModule":Lcom/syu/remote/Registrar;
    if-eqz v0, :cond_0

    .line 279
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p4, v1, v2

    invoke-virtual {v0, p2, p3, v1}, Lcom/syu/remote/Registrar;->getFlt(FI[I)F

    move-result p2

    .line 281
    .end local p2    # "def":F
    :cond_0
    return p2
.end method

.method public getFlts(III)[F
    .locals 3
    .param p1, "module"    # I
    .param p2, "code"    # I
    .param p3, "params"    # I

    .prologue
    .line 301
    iget-object v1, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/remote/Registrar;

    .line 302
    .local v0, "sModule":Lcom/syu/remote/Registrar;
    if-eqz v0, :cond_0

    .line 303
    int-to-float v1, p2

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, p3, v2}, Lcom/syu/remote/Registrar;->getFlts(FI[I)[F

    move-result-object v1

    .line 305
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [F

    goto :goto_0
.end method

.method public getInt(IIII)I
    .locals 3
    .param p1, "module"    # I
    .param p2, "def"    # I
    .param p3, "code"    # I
    .param p4, "params"    # I

    .prologue
    .line 269
    iget-object v1, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/remote/Registrar;

    .line 270
    .local v0, "sModule":Lcom/syu/remote/Registrar;
    if-eqz v0, :cond_0

    .line 271
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p4, v1, v2

    invoke-virtual {v0, p2, p3, v1}, Lcom/syu/remote/Registrar;->getInt(II[I)I

    move-result p2

    .line 273
    .end local p2    # "def":I
    :cond_0
    return p2
.end method

.method public getInts(III)[I
    .locals 3
    .param p1, "module"    # I
    .param p2, "code"    # I
    .param p3, "params"    # I

    .prologue
    const/4 v2, 0x1

    .line 293
    iget-object v1, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/remote/Registrar;

    .line 294
    .local v0, "sModule":Lcom/syu/remote/Registrar;
    if-eqz v0, :cond_0

    .line 295
    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/syu/remote/Registrar;->getInts(I[I)[I

    move-result-object v1

    .line 297
    :goto_0
    return-object v1

    :cond_0
    new-array v1, v2, [I

    goto :goto_0
.end method

.method public getStr(ILjava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p1, "module"    # I
    .param p2, "def"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "params"    # I

    .prologue
    .line 285
    iget-object v1, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/remote/Registrar;

    .line 286
    .local v0, "sModule":Lcom/syu/remote/Registrar;
    if-eqz v0, :cond_0

    .line 287
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p4, v1, v2

    invoke-virtual {v0, p2, p3, v1}, Lcom/syu/remote/Registrar;->getStr(Ljava/lang/String;I[I)Ljava/lang/String;

    move-result-object p2

    .line 289
    .end local p2    # "def":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getStrs(III)[Ljava/lang/String;
    .locals 3
    .param p1, "module"    # I
    .param p2, "code"    # I
    .param p3, "params"    # I

    .prologue
    const/4 v2, 0x1

    .line 309
    iget-object v1, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/remote/Registrar;

    .line 310
    .local v0, "sModule":Lcom/syu/remote/Registrar;
    if-eqz v0, :cond_0

    .line 311
    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/syu/remote/Registrar;->getStrs(I[I)[Ljava/lang/String;

    move-result-object v1

    .line 313
    :goto_0
    return-object v1

    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method public varargs notify(I[I)V
    .locals 3
    .param p1, "module"    # I
    .param p2, "codes"    # [I

    .prologue
    .line 152
    if-nez p2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/remote/Registrar;

    .line 154
    .local v0, "registrar":Lcom/syu/remote/Registrar;
    iget-object v1, p0, Lcom/syu/remote/RemoteTools;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/syu/remote/RemoteTools$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/syu/remote/RemoteTools$4;-><init>(Lcom/syu/remote/RemoteTools;Lcom/syu/remote/Registrar;[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 90
    if-eqz p2, :cond_0

    .line 91
    invoke-static {p2}, Lcom/syu/ipc/IRemoteToolkit$Stub;->asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/IRemoteToolkit;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/remote/RemoteTools;->mToolkit:Lcom/syu/ipc/IRemoteToolkit;

    .line 92
    iget-object v2, p0, Lcom/syu/remote/RemoteTools;->mToolkit:Lcom/syu/ipc/IRemoteToolkit;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 117
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 94
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 95
    .local v1, "module":I
    iget-object v2, p0, Lcom/syu/remote/RemoteTools;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/syu/remote/RemoteTools$2;

    invoke-direct {v3, p0, v1}, Lcom/syu/remote/RemoteTools$2;-><init>(Lcom/syu/remote/RemoteTools;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-boolean v0, p0, Lcom/syu/remote/RemoteTools;->autoConn:Z

    if-eqz v0, :cond_1

    .line 122
    iput-object v2, p0, Lcom/syu/remote/RemoteTools;->mToolkit:Lcom/syu/ipc/IRemoteToolkit;

    .line 123
    invoke-virtual {p0}, Lcom/syu/remote/RemoteTools;->bind()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/syu/remote/RemoteTools;->mToolkit:Lcom/syu/ipc/IRemoteToolkit;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/syu/remote/RemoteTools;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/syu/remote/RemoteTools$3;

    invoke-direct {v1, p0}, Lcom/syu/remote/RemoteTools$3;-><init>(Lcom/syu/remote/RemoteTools;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    :cond_2
    iput-object v2, p0, Lcom/syu/remote/RemoteTools;->mToolkit:Lcom/syu/ipc/IRemoteToolkit;

    goto :goto_0
.end method

.method public removeRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;)V
    .locals 2
    .param p1, "module"    # I
    .param p2, "lisenter"    # Lcom/syu/remote/Callback$OnRefreshLisenter;

    .prologue
    .line 204
    iget-object v1, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/remote/Registrar;

    .line 205
    .local v0, "sModule":Lcom/syu/remote/Registrar;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p2}, Lcom/syu/remote/Registrar;->removeOnRefreshLisenter(Lcom/syu/remote/Callback$OnRefreshLisenter;)V

    .line 208
    :cond_0
    return-void
.end method

.method public varargs sendFlt(II[F)V
    .locals 5
    .param p1, "module"    # I
    .param p2, "code"    # I
    .param p3, "params"    # [F

    .prologue
    .line 256
    iget-object v3, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/syu/remote/Registrar;

    .line 257
    .local v2, "sModule":Lcom/syu/remote/Registrar;
    if-eqz v2, :cond_0

    .line 259
    :try_start_0
    invoke-virtual {v2}, Lcom/syu/remote/Registrar;->getModule()Lcom/syu/ipc/IRemoteModule;

    move-result-object v1

    .line 260
    .local v1, "sIRemoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 261
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, p2, v3, p3, v4}, Lcom/syu/ipc/IRemoteModule;->cmd(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "sIRemoteModule":Lcom/syu/ipc/IRemoteModule;
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs sendInt(II[I)V
    .locals 5
    .param p1, "module"    # I
    .param p2, "code"    # I
    .param p3, "params"    # [I

    .prologue
    .line 217
    iget-object v3, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/syu/remote/Registrar;

    .line 218
    .local v2, "sModule":Lcom/syu/remote/Registrar;
    if-eqz v2, :cond_0

    .line 220
    :try_start_0
    invoke-virtual {v2}, Lcom/syu/remote/Registrar;->getModule()Lcom/syu/ipc/IRemoteModule;

    move-result-object v1

    .line 221
    .local v1, "sIRemoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 222
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, p2, p3, v3, v4}, Lcom/syu/ipc/IRemoteModule;->cmd(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1    # "sIRemoteModule":Lcom/syu/ipc/IRemoteModule;
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs sendStr(II[Ljava/lang/String;)V
    .locals 5
    .param p1, "module"    # I
    .param p2, "code"    # I
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 237
    iget-object v3, p0, Lcom/syu/remote/RemoteTools;->mModules:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/syu/remote/Registrar;

    .line 238
    .local v2, "sModule":Lcom/syu/remote/Registrar;
    if-eqz v2, :cond_0

    .line 240
    :try_start_0
    invoke-virtual {v2}, Lcom/syu/remote/Registrar;->getModule()Lcom/syu/ipc/IRemoteModule;

    move-result-object v1

    .line 241
    .local v1, "sIRemoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 242
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, p2, v3, v4, p3}, Lcom/syu/ipc/IRemoteModule;->cmd(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "sIRemoteModule":Lcom/syu/ipc/IRemoteModule;
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unBind()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/remote/RemoteTools;->autoConn:Z

    .line 83
    iget-object v0, p0, Lcom/syu/remote/RemoteTools;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/syu/remote/RemoteTools;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 86
    :cond_0
    return-void
.end method

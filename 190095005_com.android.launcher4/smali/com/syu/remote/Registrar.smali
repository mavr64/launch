.class public abstract Lcom/syu/remote/Registrar;
.super Ljava/lang/Object;
.source "Registrar.java"


# instance fields
.field protected mCallback:Lcom/syu/remote/Callback;

.field mModule:Lcom/syu/ipc/IRemoteModule;

.field mRefreshCode:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/syu/remote/Callback;

    invoke-direct {v0}, Lcom/syu/remote/Callback;-><init>()V

    iput-object v0, p0, Lcom/syu/remote/Registrar;->mCallback:Lcom/syu/remote/Callback;

    .line 17
    return-void
.end method


# virtual methods
.method varargs addOnRefreshLisenter(Lcom/syu/remote/Callback$OnRefreshLisenter;[I)V
    .locals 4
    .param p1, "lisenter"    # Lcom/syu/remote/Callback$OnRefreshLisenter;
    .param p2, "codes"    # [I

    .prologue
    .line 37
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 43
    :cond_0
    return-void

    .line 38
    :cond_1
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p2, v1

    .line 39
    .local v0, "code":I
    if-eqz p1, :cond_2

    .line 40
    iget-object v3, p0, Lcom/syu/remote/Registrar;->mCallback:Lcom/syu/remote/Callback;

    invoke-virtual {v3, p1, v0}, Lcom/syu/remote/Callback;->addOnRefreshLisenter(Lcom/syu/remote/Callback$OnRefreshLisenter;I)V

    .line 38
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getCallback()Lcom/syu/remote/Callback;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/syu/remote/Registrar;->mCallback:Lcom/syu/remote/Callback;

    return-object v0
.end method

.method final varargs getFlt(FI[I)F
    .locals 5
    .param p1, "def"    # F
    .param p2, "code"    # I
    .param p3, "params"    # [I

    .prologue
    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p2, p3, v3, v4}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 141
    .local v1, "object":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    .line 142
    iget-object v2, v1, Lcom/syu/ipc/ModuleObject;->flts:[F

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/syu/ipc/ModuleObject;->flts:[F

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, v1, Lcom/syu/ipc/ModuleObject;->flts:[F

    const/4 v3, 0x0

    aget p1, v2, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "object":Lcom/syu/ipc/ModuleObject;
    .end local p1    # "def":F
    :cond_0
    :goto_0
    return p1

    .line 144
    .restart local p1    # "def":F
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method final varargs getFlts(FI[I)[F
    .locals 6
    .param p1, "def"    # F
    .param p2, "code"    # I
    .param p3, "params"    # [I

    .prologue
    const/4 v2, 0x0

    .line 176
    :try_start_0
    iget-object v3, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, p2, p3, v4, v5}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 177
    .local v1, "object":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    .line 178
    iget-object v2, v1, Lcom/syu/ipc/ModuleObject;->flts:[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1    # "object":Lcom/syu/ipc/ModuleObject;
    :cond_0
    :goto_0
    return-object v2

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method final varargs getInt(II[I)I
    .locals 5
    .param p1, "def"    # I
    .param p2, "code"    # I
    .param p3, "params"    # [I

    .prologue
    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p2, p3, v3, v4}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 129
    .local v1, "object":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    .line 130
    iget-object v2, v1, Lcom/syu/ipc/ModuleObject;->ints:[I

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/syu/ipc/ModuleObject;->ints:[I

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, v1, Lcom/syu/ipc/ModuleObject;->ints:[I

    const/4 v3, 0x0

    aget p1, v2, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "object":Lcom/syu/ipc/ModuleObject;
    .end local p1    # "def":I
    :cond_0
    :goto_0
    return p1

    .line 132
    .restart local p1    # "def":I
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method final varargs getInts(I[I)[I
    .locals 6
    .param p1, "code"    # I
    .param p2, "params"    # [I

    .prologue
    const/4 v2, 0x0

    .line 164
    :try_start_0
    iget-object v3, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, p1, p2, v4, v5}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 165
    .local v1, "object":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    .line 166
    iget-object v2, v1, Lcom/syu/ipc/ModuleObject;->ints:[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "object":Lcom/syu/ipc/ModuleObject;
    :cond_0
    :goto_0
    return-object v2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method getModule()Lcom/syu/ipc/IRemoteModule;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    return-object v0
.end method

.method final varargs getStr(Ljava/lang/String;I[I)Ljava/lang/String;
    .locals 5
    .param p1, "def"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "params"    # [I

    .prologue
    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p2, p3, v3, v4}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 153
    .local v1, "object":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    .line 154
    iget-object v2, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object p1, v2, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "object":Lcom/syu/ipc/ModuleObject;
    .end local p1    # "def":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 156
    .restart local p1    # "def":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method final varargs getStrs(I[I)[Ljava/lang/String;
    .locals 6
    .param p1, "code"    # I
    .param p2, "params"    # [I

    .prologue
    const/4 v2, 0x0

    .line 188
    :try_start_0
    iget-object v3, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, p1, p2, v4, v5}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 189
    .local v1, "object":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    .line 190
    iget-object v2, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v1    # "object":Lcom/syu/ipc/ModuleObject;
    :cond_0
    :goto_0
    return-object v2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method varargs notify([I)V
    .locals 5
    .param p1, "codes"    # [I

    .prologue
    .line 96
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    if-eqz v1, :cond_0

    .line 97
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 100
    :cond_0
    return-void

    .line 97
    :cond_1
    aget v0, p1, v1

    .line 98
    .local v0, "code":I
    iget-object v3, p0, Lcom/syu/remote/Registrar;->mCallback:Lcom/syu/remote/Callback;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v0, v4}, Lcom/syu/remote/Registrar;->registerCallback(Lcom/syu/ipc/IModuleCallback;IZ)V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method abstract registerCallback()V
.end method

.method registerCallback(Lcom/syu/ipc/IModuleCallback;IZ)V
    .locals 3
    .param p1, "cb"    # Lcom/syu/ipc/IModuleCallback;
    .param p2, "code"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 57
    iget-object v1, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    if-eqz v1, :cond_0

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, p1, p2, v1}, Lcom/syu/ipc/IRemoteModule;->register(Lcom/syu/ipc/IModuleCallback;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_1
    return-void

    .line 59
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method varargs registerCode([I)V
    .locals 5
    .param p1, "codes"    # [I

    .prologue
    .line 71
    if-nez p1, :cond_1

    .line 78
    :cond_0
    return-void

    .line 74
    :cond_1
    iput-object p1, p0, Lcom/syu/remote/Registrar;->mRefreshCode:[I

    .line 75
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 76
    .local v0, "code":I
    iget-object v3, p0, Lcom/syu/remote/Registrar;->mCallback:Lcom/syu/remote/Callback;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v0, v4}, Lcom/syu/remote/Registrar;->registerCallback(Lcom/syu/ipc/IModuleCallback;IZ)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method removeOnRefreshLisenter(Lcom/syu/remote/Callback$OnRefreshLisenter;)V
    .locals 1
    .param p1, "lisenter"    # Lcom/syu/remote/Callback$OnRefreshLisenter;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/syu/remote/Registrar;->mCallback:Lcom/syu/remote/Callback;

    invoke-virtual {v0, p1}, Lcom/syu/remote/Callback;->removeOnRefreshLisenter(Lcom/syu/remote/Callback$OnRefreshLisenter;)V

    .line 54
    :cond_0
    return-void
.end method

.method setModule(Lcom/syu/ipc/IRemoteModule;)V
    .locals 0
    .param p1, "mModule"    # Lcom/syu/ipc/IRemoteModule;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    .line 122
    invoke-virtual {p0}, Lcom/syu/remote/Registrar;->registerCallback()V

    .line 123
    return-void
.end method

.method final unRegisterCallback()V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/syu/remote/Registrar;->unRegisterCode()V

    .line 24
    return-void
.end method

.method unRegisterCallback(Lcom/syu/ipc/IModuleCallback;I)V
    .locals 2
    .param p1, "cb"    # Lcom/syu/ipc/IModuleCallback;
    .param p2, "code"    # I

    .prologue
    .line 103
    iget-object v1, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/syu/remote/Registrar;->mModule:Lcom/syu/ipc/IRemoteModule;

    invoke-interface {v1, p1, p2}, Lcom/syu/ipc/IRemoteModule;->unregister(Lcom/syu/ipc/IModuleCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method unRegisterCode()V
    .locals 5

    .prologue
    .line 81
    iget-object v1, p0, Lcom/syu/remote/Registrar;->mRefreshCode:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/syu/remote/Registrar;->mRefreshCode:[I

    array-length v1, v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    return-void

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/syu/remote/Registrar;->mRefreshCode:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 85
    .local v0, "code":I
    iget-object v4, p0, Lcom/syu/remote/Registrar;->mCallback:Lcom/syu/remote/Callback;

    invoke-virtual {p0, v4, v0}, Lcom/syu/remote/Registrar;->unRegisterCallback(Lcom/syu/ipc/IModuleCallback;I)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

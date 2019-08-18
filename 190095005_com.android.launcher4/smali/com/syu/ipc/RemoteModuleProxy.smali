.class public Lcom/syu/ipc/RemoteModuleProxy;
.super Lcom/syu/ipc/IRemoteModule$Stub;
.source "RemoteModuleProxy.java"


# instance fields
.field private mRemoteModule:Lcom/syu/ipc/IRemoteModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/syu/ipc/IRemoteModule$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cmd(I)V
    .locals 5
    .param p1, "cmdCode"    # I

    .prologue
    .line 38
    iget-object v1, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 39
    .local v1, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 41
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, p1, v2, v3, v4}, Lcom/syu/ipc/IRemoteModule;->cmd(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cmd(II)V
    .locals 5
    .param p1, "cmdCode"    # I
    .param p2, "value"    # I

    .prologue
    .line 50
    iget-object v1, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 51
    .local v1, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 53
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/syu/ipc/IRemoteModule;->cmd(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cmd(III)V
    .locals 5
    .param p1, "cmdCode"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 63
    .local v1, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 65
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/syu/ipc/IRemoteModule;->cmd(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cmd(I[I[F[Ljava/lang/String;)V
    .locals 2
    .param p1, "cmdCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 27
    .local v1, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 29
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/syu/ipc/IRemoteModule;->cmd(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public get(II)Lcom/syu/ipc/ModuleObject;
    .locals 6
    .param p1, "getCode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v1, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 90
    .local v1, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 92
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, p1, v3, v4, v5}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 97
    :cond_0
    :goto_0
    return-object v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;
    .locals 3
    .param p1, "getCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 75
    .local v1, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 82
    :goto_0
    return-object v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 82
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getI(II)I
    .locals 6
    .param p1, "getCode"    # I
    .param p2, "valueIfNotOk"    # I

    .prologue
    .line 104
    iget-object v2, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 105
    .local v2, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v2, :cond_0

    .line 107
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2, p1, v3, v4, v5}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 108
    .local v1, "obj":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/syu/ipc/ModuleObject;->ints:[I

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/syu/ipc/ModuleObject;->ints:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 109
    iget-object v3, v1, Lcom/syu/ipc/ModuleObject;->ints:[I

    const/4 v4, 0x0

    aget p2, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1    # "obj":Lcom/syu/ipc/ModuleObject;
    .end local p2    # "valueIfNotOk":I
    :cond_0
    :goto_0
    return p2

    .line 111
    .restart local p2    # "valueIfNotOk":I
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRemoteModule()Lcom/syu/ipc/IRemoteModule;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    return-object v0
.end method

.method public getS(II)Ljava/lang/String;
    .locals 8
    .param p1, "getCode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 122
    iget-object v2, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 123
    .local v2, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v2, :cond_0

    .line 125
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, p1, v4, v5, v6}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 126
    .local v1, "obj":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    array-length v4, v4

    if-lt v4, v7, :cond_0

    .line 127
    iget-object v4, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v4, v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "obj":Lcom/syu/ipc/ModuleObject;
    :cond_0
    :goto_0
    return-object v3

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getS(III)Ljava/lang/String;
    .locals 8
    .param p1, "getCode"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 140
    iget-object v2, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 141
    .local v2, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v2, :cond_0

    .line 143
    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p2, v4, v5

    const/4 v5, 0x1

    aput p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, p1, v4, v5, v6}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 144
    .local v1, "obj":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    array-length v4, v4

    if-lt v4, v7, :cond_0

    .line 145
    iget-object v4, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v4, v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "obj":Lcom/syu/ipc/ModuleObject;
    :cond_0
    :goto_0
    return-object v3

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public register(Lcom/syu/ipc/IModuleCallback;II)V
    .locals 2
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p2, "updateCode"    # I
    .param p3, "update"    # I

    .prologue
    .line 157
    iget-object v1, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 158
    .local v1, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 160
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/syu/ipc/IRemoteModule;->register(Lcom/syu/ipc/IModuleCallback;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V
    .locals 0
    .param p1, "remoteModule"    # Lcom/syu/ipc/IRemoteModule;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 22
    return-void
.end method

.method public unregister(Lcom/syu/ipc/IModuleCallback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p2, "updateCode"    # I

    .prologue
    .line 169
    iget-object v1, p0, Lcom/syu/ipc/RemoteModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 170
    .local v1, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 172
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/syu/ipc/IRemoteModule;->unregister(Lcom/syu/ipc/IModuleCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

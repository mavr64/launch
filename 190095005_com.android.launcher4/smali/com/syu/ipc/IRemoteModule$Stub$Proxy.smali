.class Lcom/syu/ipc/IRemoteModule$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteModule.java"

# interfaces
.implements Lcom/syu/ipc/IRemoteModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/ipc/IRemoteModule$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 112
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cmd(I[I[F[Ljava/lang/String;)V
    .locals 5
    .param p1, "cmdCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 126
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 128
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.syu.ipc.IRemoteModule"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 131
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 132
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    return-void

    .line 135
    :catchall_0
    move-exception v2

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    throw v2
.end method

.method public get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;
    .locals 6
    .param p1, "getCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 144
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 147
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.syu.ipc.IRemoteModule"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 150
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 151
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    new-instance v2, Lcom/syu/ipc/ModuleObject;

    invoke-direct {v2}, Lcom/syu/ipc/ModuleObject;-><init>()V

    .line 156
    .local v2, "result":Lcom/syu/ipc/ModuleObject;
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, v2, Lcom/syu/ipc/ModuleObject;->ints:[I

    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    iput-object v3, v2, Lcom/syu/ipc/ModuleObject;->flts:[F

    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    return-object v2

    .line 160
    .end local v2    # "result":Lcom/syu/ipc/ModuleObject;
    :cond_0
    const/4 v2, 0x0

    .line 162
    .restart local v2    # "result":Lcom/syu/ipc/ModuleObject;
    goto :goto_0

    .end local v2    # "result":Lcom/syu/ipc/ModuleObject;
    :catchall_0
    move-exception v3

    .line 163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    throw v3
.end method

.method public register(Lcom/syu/ipc/IModuleCallback;II)V
    .locals 5
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p2, "updateCode"    # I
    .param p3, "update"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 172
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 174
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.syu.ipc.IRemoteModule"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/syu/ipc/IModuleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 176
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v2, p0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    return-void

    .line 175
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v2

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw v2
.end method

.method public unregister(Lcom/syu/ipc/IModuleCallback;I)V
    .locals 5
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p2, "updateCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 189
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 191
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.syu.ipc.IRemoteModule"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/syu/ipc/IModuleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 193
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v2, p0, Lcom/syu/ipc/IRemoteModule$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    return-void

    .line 192
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v2

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    throw v2
.end method

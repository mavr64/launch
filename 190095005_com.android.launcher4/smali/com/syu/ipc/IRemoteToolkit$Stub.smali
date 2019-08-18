.class public abstract Lcom/syu/ipc/IRemoteToolkit$Stub;
.super Landroid/os/Binder;
.source "IRemoteToolkit.java"

# interfaces
.implements Lcom/syu/ipc/IRemoteToolkit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/ipc/IRemoteToolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/ipc/IRemoteToolkit$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.syu.ipc.IRemoteToolkit"

.field static final TRANSACTION_getRemoteModule:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.syu.ipc.IRemoteToolkit"

    invoke-virtual {p0, p0, v0}, Lcom/syu/ipc/IRemoteToolkit$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/IRemoteToolkit;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "com.syu.ipc.IRemoteToolkit"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/syu/ipc/IRemoteToolkit;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/syu/ipc/IRemoteToolkit;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/syu/ipc/IRemoteToolkit$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/syu/ipc/IRemoteToolkit$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 50
    :sswitch_0
    const-string v2, "com.syu.ipc.IRemoteToolkit"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 51
    goto :goto_0

    .line 54
    :sswitch_1
    const-string v2, "com.syu.ipc.IRemoteToolkit"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "moduleCode":I
    invoke-virtual {p0, v0}, Lcom/syu/ipc/IRemoteToolkit$Stub;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v1

    .line 57
    .local v1, "result":Lcom/syu/ipc/IRemoteModule;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/syu/ipc/IRemoteModule;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v2, v3

    .line 59
    goto :goto_0

    .line 58
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

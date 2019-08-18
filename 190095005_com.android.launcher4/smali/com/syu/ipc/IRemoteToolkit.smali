.class public interface abstract Lcom/syu/ipc/IRemoteToolkit;
.super Ljava/lang/Object;
.source "IRemoteToolkit.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/ipc/IRemoteToolkit$Stub;
    }
.end annotation


# virtual methods
.method public abstract getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

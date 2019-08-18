.class public interface abstract Lcom/syu/ipc/IModuleCallback;
.super Ljava/lang/Object;
.source "IModuleCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/ipc/IModuleCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract update(I[I[F[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

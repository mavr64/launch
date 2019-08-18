.class public Lcom/syu/ipc/DataMain;
.super Ljava/lang/Object;
.source "DataMain.java"


# static fields
.field public static final PROXY:Lcom/syu/ipc/RemoteModuleProxy;

.field public static sAppIdRequest:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/syu/ipc/RemoteModuleProxy;

    invoke-direct {v0}, Lcom/syu/ipc/RemoteModuleProxy;-><init>()V

    sput-object v0, Lcom/syu/ipc/DataMain;->PROXY:Lcom/syu/ipc/RemoteModuleProxy;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/fyt/car/LocalConfig;
.super Ljava/lang/Object;
.source "LocalConfig.java"


# static fields
.field public static mDvrEnable:Z

.field public static mHaveIpod:Z

.field public static mIpodEnable:Z

.field public static mTvSytle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/fyt/car/LocalConfig;->mHaveIpod:Z

    .line 6
    sput v0, Lcom/fyt/car/LocalConfig;->mTvSytle:I

    .line 7
    sput-boolean v0, Lcom/fyt/car/LocalConfig;->mIpodEnable:Z

    .line 8
    sput-boolean v0, Lcom/fyt/car/LocalConfig;->mDvrEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

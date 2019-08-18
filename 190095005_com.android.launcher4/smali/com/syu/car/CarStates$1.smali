.class Lcom/syu/car/CarStates$1;
.super Ljava/lang/Object;
.source "CarStates.java"

# interfaces
.implements Lcom/syu/remote/Callback$OnRefreshLisenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/car/CarStates;->setupMainModule(Lcom/syu/remote/RemoteTools;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/car/CarStates;


# direct methods
.method constructor <init>(Lcom/syu/car/CarStates;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/car/CarStates$1;->this$0:Lcom/syu/car/CarStates;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(I[I[F[Ljava/lang/String;)V
    .locals 2
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 101
    if-nez p1, :cond_1

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/syu/util/JTools;->check([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 103
    aget v0, p2, v1

    sput v0, Lcom/syu/car/CarStates;->mAppID:I

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const/16 v0, 0x32

    if-ne p1, v0, :cond_2

    .line 106
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 107
    aget v0, p2, v1

    sput v0, Lcom/syu/car/CarStates;->mAccState:I

    goto :goto_0

    .line 109
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 110
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 111
    aget v0, p2, v1

    sput v0, Lcom/syu/car/CarStates;->mSmallLight:I

    goto :goto_0
.end method

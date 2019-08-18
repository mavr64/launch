.class Lcom/syu/car/CarStates$2;
.super Ljava/lang/Object;
.source "CarStates.java"

# interfaces
.implements Lcom/syu/remote/Callback$OnRefreshLisenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/car/CarStates;->setupcanbusModule(Lcom/syu/remote/RemoteTools;)V
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
    iput-object p1, p0, Lcom/syu/car/CarStates$2;->this$0:Lcom/syu/car/CarStates;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    invoke-static {p2, v2}, Lcom/syu/util/JTools;->check([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    aget v0, p2, v1

    sput v0, Lcom/syu/car/CarStates;->mCanbusType:I

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const/16 v0, 0x3f8

    if-ne p1, v0, :cond_2

    invoke-static {p2, v2}, Lcom/syu/util/JTools;->check([II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    aget v0, p2, v1

    sput v0, Lcom/syu/car/CarStates;->mExistCarRadio:I

    goto :goto_0

    .line 135
    :cond_2
    const/16 v0, 0x409

    if-ne p1, v0, :cond_0

    invoke-static {p2, v2}, Lcom/syu/util/JTools;->check([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    aget v0, p2, v1

    sput v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mGpsAngle ***** "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/syu/car/CarStates;->mGpsAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    goto :goto_0
.end method

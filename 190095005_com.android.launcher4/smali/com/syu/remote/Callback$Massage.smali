.class Lcom/syu/remote/Callback$Massage;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/remote/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Massage"
.end annotation


# instance fields
.field code:I

.field flts:[F

.field ints:[I

.field refesh:Ljava/lang/Runnable;

.field strs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/syu/remote/Callback;


# direct methods
.method public constructor <init>(Lcom/syu/remote/Callback;I[I[F[Ljava/lang/String;)V
    .locals 1
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/syu/remote/Callback$Massage;->this$0:Lcom/syu/remote/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/syu/remote/Callback$Massage$1;

    invoke-direct {v0, p0}, Lcom/syu/remote/Callback$Massage$1;-><init>(Lcom/syu/remote/Callback$Massage;)V

    iput-object v0, p0, Lcom/syu/remote/Callback$Massage;->refesh:Ljava/lang/Runnable;

    .line 105
    iput p2, p0, Lcom/syu/remote/Callback$Massage;->code:I

    .line 106
    iput-object p3, p0, Lcom/syu/remote/Callback$Massage;->ints:[I

    .line 107
    iput-object p4, p0, Lcom/syu/remote/Callback$Massage;->flts:[F

    .line 108
    iput-object p5, p0, Lcom/syu/remote/Callback$Massage;->strs:[Ljava/lang/String;

    .line 109
    return-void
.end method

.method static synthetic access$0(Lcom/syu/remote/Callback$Massage;)Lcom/syu/remote/Callback;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/syu/remote/Callback$Massage;->this$0:Lcom/syu/remote/Callback;

    return-object v0
.end method


# virtual methods
.method refresh()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/syu/remote/Callback$Massage;->this$0:Lcom/syu/remote/Callback;

    iget-object v0, v0, Lcom/syu/remote/Callback;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/remote/Callback$Massage;->this$0:Lcom/syu/remote/Callback;

    iget-object v0, v0, Lcom/syu/remote/Callback;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/syu/remote/Callback$Massage;->refesh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    :cond_0
    return-void
.end method

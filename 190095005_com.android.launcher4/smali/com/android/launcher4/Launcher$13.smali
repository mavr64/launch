.class Lcom/android/launcher4/Launcher$13;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/syu/remote/Callback$OnRefreshLisenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$13;->this$0:Lcom/android/launcher4/Launcher;

    .line 4702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(I[I[F[Ljava/lang/String;)V
    .locals 4
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4708
    if-nez p1, :cond_1

    .line 4709
    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 4710
    aget v0, p2, v2

    .line 4712
    .local v0, "band":I
    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    const v1, 0x10001

    if-eq v0, v1, :cond_0

    const v1, 0x10002

    if-ne v0, v1, :cond_2

    .line 4713
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/Launcher$13;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1, v2}, Lcom/android/launcher4/Launcher;->access$46(Lcom/android/launcher4/Launcher;I)V

    .line 4723
    .end local v0    # "band":I
    :cond_1
    :goto_0
    return-void

    .line 4715
    .restart local v0    # "band":I
    :cond_2
    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_1

    .line 4717
    :cond_3
    iget-object v1, p0, Lcom/android/launcher4/Launcher$13;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher4/Launcher;->access$46(Lcom/android/launcher4/Launcher;I)V

    goto :goto_0
.end method

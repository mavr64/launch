.class Lcom/android/launcher4/Launcher$7;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/fyt/car/IUiRefresher;


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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$7;->this$0:Lcom/android/launcher4/Launcher;

    .line 1895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh([I[J[F[Ljava/lang/String;[B)V
    .locals 3
    .param p1, "ints"    # [I
    .param p2, "lngs"    # [J
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .param p5, "byts"    # [B

    .prologue
    .line 1901
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 1902
    const/4 v1, 0x0

    aget v0, p1, v1

    .line 1903
    .local v0, "mDvrRecState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1904
    iget-object v1, p0, Lcom/android/launcher4/Launcher$7;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "WS_Dvr_Rec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1906
    iget-object v1, p0, Lcom/android/launcher4/Launcher$7;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "WS_Dvr_Rec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1908
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->dvr_stop_btn:I

    .line 1907
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1920
    .end local v0    # "mDvrRecState":I
    :cond_0
    :goto_0
    return-void

    .line 1910
    .restart local v0    # "mDvrRecState":I
    :cond_1
    if-nez v0, :cond_0

    .line 1911
    iget-object v1, p0, Lcom/android/launcher4/Launcher$7;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "WS_Dvr_Rec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1913
    iget-object v1, p0, Lcom/android/launcher4/Launcher$7;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "WS_Dvr_Rec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1915
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->dvr_rec_btn:I

    .line 1914
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

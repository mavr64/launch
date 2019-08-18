.class Lcom/android/launcher4/Launcher$6;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$6;->this$0:Lcom/android/launcher4/Launcher;

    .line 1868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh([I[J[F[Ljava/lang/String;[B)V
    .locals 4
    .param p1, "ints"    # [I
    .param p2, "lngs"    # [J
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .param p5, "byts"    # [B

    .prologue
    const/4 v3, 0x1

    .line 1872
    const/4 v1, 0x0

    .line 1873
    .local v1, "musicName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1874
    .local v0, "artist":Ljava/lang/String;
    if-eqz p4, :cond_0

    array-length v2, p4

    if-le v2, v3, :cond_0

    .line 1875
    const/4 v2, 0x0

    aget-object v1, p4, v2

    .line 1876
    aget-object v0, p4, v3

    .line 1879
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1880
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1882
    iget-object v2, p0, Lcom/android/launcher4/Launcher$6;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v2}, Lcom/android/launcher4/Launcher;->access$16(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1883
    iget-object v2, p0, Lcom/android/launcher4/Launcher$6;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v2}, Lcom/android/launcher4/Launcher;->access$16(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1887
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1888
    iget-object v2, p0, Lcom/android/launcher4/Launcher$6;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v2}, Lcom/android/launcher4/Launcher;->access$17(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1889
    iget-object v2, p0, Lcom/android/launcher4/Launcher$6;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v2}, Lcom/android/launcher4/Launcher;->access$17(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1892
    :cond_2
    return-void
.end method

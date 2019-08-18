.class Lcom/android/launcher4/Launcher$15;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$15;->this$0:Lcom/android/launcher4/Launcher;

    .line 4822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh([I[J[F[Ljava/lang/String;[B)V
    .locals 2
    .param p1, "ints"    # [I
    .param p2, "lngs"    # [J
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .param p5, "byts"    # [B

    .prologue
    .line 4827
    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    .line 4828
    iget-object v0, p0, Lcom/android/launcher4/Launcher$15;->this$0:Lcom/android/launcher4/Launcher;

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$52(Lcom/android/launcher4/Launcher;Ljava/lang/String;)V

    .line 4830
    iget-object v0, p0, Lcom/android/launcher4/Launcher$15;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$53(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/Launcher$15;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$54(Lcom/android/launcher4/Launcher;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4831
    const-string v0, "true"

    iget-object v1, p0, Lcom/android/launcher4/Launcher$15;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$54(Lcom/android/launcher4/Launcher;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4832
    iget-object v0, p0, Lcom/android/launcher4/Launcher$15;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$53(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v0

    .line 4833
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->music_playpause_icon:I

    .line 4832
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 4841
    :cond_0
    :goto_0
    return-void

    .line 4834
    :cond_1
    const-string v0, "false"

    iget-object v1, p0, Lcom/android/launcher4/Launcher$15;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$54(Lcom/android/launcher4/Launcher;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4835
    iget-object v0, p0, Lcom/android/launcher4/Launcher$15;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$53(Lcom/android/launcher4/Launcher;)Landroid/widget/Button;

    move-result-object v0

    .line 4836
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->music_pause_icon:I

    .line 4835
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

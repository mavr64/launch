.class Lcom/android/launcher4/Launcher$14;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    .line 4744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(I[I[F[Ljava/lang/String;)V
    .locals 7
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    const/16 v4, 0x1388

    const/4 v5, 0x0

    .line 4748
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 4749
    if-eqz p2, :cond_3

    array-length v3, p2

    if-lez v3, :cond_3

    .line 4752
    aget v3, p2, v5

    sput v3, Lcom/android/launcher4/Launcher;->radioFreqState:I

    .line 4753
    aget v3, p2, v5

    if-le v3, v4, :cond_5

    .line 4754
    aget v0, p2, v5

    .line 4755
    .local v0, "fmFreq":I
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3, v0}, Lcom/android/launcher4/Launcher;->access$47(Lcom/android/launcher4/Launcher;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/launcher4/Launcher;->freq:Ljava/lang/String;

    .line 4758
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    aget v4, p2, v5

    invoke-static {v3, v4}, Lcom/android/launcher4/Launcher;->access$47(Lcom/android/launcher4/Launcher;I)Ljava/lang/String;

    move-result-object v2

    .line 4759
    .local v2, "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4760
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4759
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4761
    .local v1, "freqs":Ljava/lang/String;
    sput-object v1, Lcom/android/launcher4/Launcher;->radioFreq:Ljava/lang/String;

    .line 4762
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$48(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4764
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$48(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4766
    :cond_0
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$49(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4767
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$49(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 4769
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$49(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    .line 4770
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->fm:I

    .line 4769
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4777
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$50(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4779
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$50(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "MHz"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4781
    :cond_2
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$51(Lcom/android/launcher4/Launcher;)Lcom/fyt/widget/RadioRuler;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4783
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$51(Lcom/android/launcher4/Launcher;)Lcom/fyt/widget/RadioRuler;

    move-result-object v3

    const/16 v4, 0x222e

    .line 4784
    const/16 v5, 0x2a30

    .line 4783
    invoke-virtual {v3, v0, v4, v5}, Lcom/fyt/widget/RadioRuler;->setTargetMarkAnim(III)V

    .line 4818
    .end local v0    # "fmFreq":I
    .end local v1    # "freqs":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :cond_3
    :goto_1
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-static {v3}, Lcom/syu/widget/music/Widget;->update(Landroid/content/Context;)V

    .line 4819
    return-void

    .line 4773
    .restart local v0    # "fmFreq":I
    .restart local v1    # "freqs":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$49(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "FM"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4787
    .end local v0    # "fmFreq":I
    .end local v1    # "freqs":Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :cond_5
    aget v3, p2, v5

    if-ge v3, v4, :cond_3

    aget v3, p2, v5

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_3

    .line 4789
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    aget v4, p2, v5

    invoke-static {v3, v4}, Lcom/android/launcher4/Launcher;->access$47(Lcom/android/launcher4/Launcher;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/launcher4/Launcher;->freq:Ljava/lang/String;

    .line 4790
    sget-object v3, Lcom/android/launcher4/Launcher;->freq:Ljava/lang/String;

    sput-object v3, Lcom/android/launcher4/Launcher;->radioFreq:Ljava/lang/String;

    .line 4791
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$48(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 4793
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$48(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    sget-object v4, Lcom/android/launcher4/Launcher;->freq:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4795
    :cond_6
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$49(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 4796
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$49(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 4798
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$49(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    .line 4799
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->am:I

    .line 4798
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4805
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$50(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 4807
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$50(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "KHz"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4809
    :cond_8
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$51(Lcom/android/launcher4/Launcher;)Lcom/fyt/widget/RadioRuler;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4811
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$51(Lcom/android/launcher4/Launcher;)Lcom/fyt/widget/RadioRuler;

    move-result-object v3

    .line 4812
    aget v4, p2, v5

    const/16 v5, 0x20a

    const/16 v6, 0x654

    invoke-virtual {v3, v4, v5, v6}, Lcom/fyt/widget/RadioRuler;->setTargetMarkAnim(III)V

    goto/16 :goto_1

    .line 4802
    :cond_9
    iget-object v3, p0, Lcom/android/launcher4/Launcher$14;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v3}, Lcom/android/launcher4/Launcher;->access$49(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "AM"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

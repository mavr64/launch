.class Lcom/android/launcher4/Launcher$5$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/Launcher$5;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    .line 1812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1817
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$4(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$5(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$4(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1820
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$5(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$6(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1824
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$6(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    .line 1825
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->default_icon:I

    .line 1824
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1828
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$7(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1829
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$7(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1832
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$8(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1833
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$8(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1836
    :cond_3
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$9(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1837
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$9(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1840
    :cond_4
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$10(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1841
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$10(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1843
    :cond_5
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$11(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1844
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$11(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1846
    :cond_6
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$12(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1847
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$12(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1849
    :cond_7
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$13(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1850
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$13(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1852
    :cond_8
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$14(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1853
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$14(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1855
    :cond_9
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$15(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1856
    iget-object v0, p0, Lcom/android/launcher4/Launcher$5$2;->this$1:Lcom/android/launcher4/Launcher$5;

    invoke-static {v0}, Lcom/android/launcher4/Launcher$5;->access$0(Lcom/android/launcher4/Launcher$5;)Lcom/android/launcher4/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$15(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1859
    :cond_a
    sput v3, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    .line 1860
    return-void
.end method

.class Lcom/android/launcher4/Launcher$10;
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
    iput-object p1, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    .line 1943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(I[I[F[Ljava/lang/String;)V
    .locals 5
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1947
    if-nez p1, :cond_4

    .line 1948
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1949
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1950
    const v1, 0x7f0a001a

    .line 1949
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1950
    if-eqz v0, :cond_0

    .line 1951
    aget v0, p2, v2

    sparse-switch v0, :sswitch_data_0

    .line 2163
    :cond_0
    :goto_0
    return-void

    .line 1954
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$19(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$19(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1960
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "WS_Radio"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1962
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "WS_Radio"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1965
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "WS_Music"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "WS_Music"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1973
    :sswitch_1
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "WS_Radio"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "WS_Radio"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1979
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "WS_Music"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1980
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "WS_Music"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1983
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$19(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1985
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$19(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1991
    :sswitch_2
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "WS_Music"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "WS_Music"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1998
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "WS_Radio"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1999
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$18(Lcom/android/launcher4/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "WS_Radio"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2002
    :cond_3
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$19(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$19(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2011
    :cond_4
    const/16 v0, 0x32

    if-ne p1, v0, :cond_10

    .line 2012
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 2013
    aget v0, p2, v2

    if-nez v0, :cond_0

    .line 2014
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$4(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$5(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2015
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$4(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2016
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$5(Lcom/android/launcher4/Launcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2019
    :cond_5
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$6(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2020
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$6(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    .line 2021
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->default_icon:I

    .line 2020
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2024
    :cond_6
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$7(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2025
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$7(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2028
    :cond_7
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$8(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2029
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$8(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2032
    :cond_8
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$9(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2033
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$9(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2036
    :cond_9
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$10(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2037
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$10(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2039
    :cond_a
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$11(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2040
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$11(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2042
    :cond_b
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$12(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2043
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$12(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2045
    :cond_c
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$13(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2046
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$13(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2048
    :cond_d
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$14(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2049
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$14(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2051
    :cond_e
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$15(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2052
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$15(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2054
    :cond_f
    sput v2, Lcom/android/launcher4/MyAutoMapReceiver;->mCurSpeed:I

    .line 2055
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iput-boolean v2, v0, Lcom/android/launcher4/Launcher;->isAnimaStart:Z

    goto/16 :goto_0

    .line 2058
    :cond_10
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    .line 2059
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "U_LAMPLET::::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 2061
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$20(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2063
    aget v0, p2, v2

    if-ne v0, v4, :cond_11

    .line 2064
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$20(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02063b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2065
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$21(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2066
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$22(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$23(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$24(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    goto/16 :goto_0

    .line 2069
    :cond_11
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$21(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2070
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$20(Lcom/android/launcher4/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02063a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2071
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/Launcher;->access$23(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$25(Lcom/android/launcher4/Launcher;Landroid/view/View;)V

    goto/16 :goto_0

    .line 2074
    :cond_12
    const/16 v0, 0x65

    if-ne p1, v0, :cond_16

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateCodeU_GPS_SPEED:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 2076
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 2078
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    aget v1, p2, v2

    iput v1, v0, Lcom/android/launcher4/Launcher;->carSpeed:I

    .line 2079
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget v0, v0, Lcom/android/launcher4/Launcher;->carSpeed:I

    if-ne v0, v4, :cond_13

    .line 2080
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iput v2, v0, Lcom/android/launcher4/Launcher;->carSpeed:I

    .line 2083
    :cond_13
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$26(Lcom/android/launcher4/Launcher;)Lcom/fyt/widget/TurntableView;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2084
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$26(Lcom/android/launcher4/Launcher;)Lcom/fyt/widget/TurntableView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget v1, v1, Lcom/android/launcher4/Launcher;->carSpeed:I

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/fyt/widget/TurntableView;->setTargetWithAnim(I)V

    .line 2086
    :cond_14
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$27(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2087
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$27(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    .line 2088
    invoke-virtual {v2}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2089
    iget-object v2, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget v2, v2, Lcom/android/launcher4/Launcher;->carSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2087
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2091
    :cond_15
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$28(Lcom/android/launcher4/Launcher;)V

    goto/16 :goto_0

    .line 2094
    :cond_16
    const/4 v0, 0x3

    if-ne p1, v0, :cond_18

    .line 2095
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 2096
    aget v0, p2, v2

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$29(Lcom/android/launcher4/Launcher;)I

    move-result v0

    if-lez v0, :cond_17

    .line 2097
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$30(Lcom/android/launcher4/Launcher;)V

    goto/16 :goto_0

    .line 2099
    :cond_17
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$31(Lcom/android/launcher4/Launcher;)V

    goto/16 :goto_0

    .line 2102
    :cond_18
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    .line 2103
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 2104
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    aget v1, p2, v2

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$32(Lcom/android/launcher4/Launcher;I)V

    .line 2105
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$29(Lcom/android/launcher4/Launcher;)I

    move-result v0

    if-lez v0, :cond_19

    .line 2106
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$30(Lcom/android/launcher4/Launcher;)V

    goto/16 :goto_0

    .line 2108
    :cond_19
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$31(Lcom/android/launcher4/Launcher;)V

    goto/16 :goto_0

    .line 2111
    :cond_1a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1b

    .line 2112
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 2113
    aget v0, p2, v2

    goto/16 :goto_0

    .line 2116
    :cond_1b
    const/16 v0, 0x1f

    if-ne p1, v0, :cond_1c

    .line 2117
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    aget v1, p2, v2

    invoke-static {v0, v1}, Lcom/android/launcher4/Launcher;->access$33(Lcom/android/launcher4/Launcher;I)V

    goto/16 :goto_0

    .line 2121
    :cond_1c
    const/16 v0, 0x409

    if-ne p1, v0, :cond_0

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "U_GPS_ANGLE------- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syu/log/LogPreview;->show(Ljava/lang/String;)V

    .line 2123
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 2125
    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    if-nez v0, :cond_1d

    .line 2126
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mIvGpsAngle:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->compass_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2127
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$34(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "- - -"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2128
    :cond_1d
    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x152

    if-lt v0, v1, :cond_1e

    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_1f

    .line 2129
    :cond_1e
    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    if-lt v0, v4, :cond_20

    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_20

    .line 2130
    :cond_1f
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mIvGpsAngle:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->compass_north:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2131
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$34(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c00b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2133
    :cond_20
    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_21

    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x43

    if-gt v0, v1, :cond_21

    .line 2134
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mIvGpsAngle:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->compass_northeast:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2135
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$34(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c00b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2137
    :cond_21
    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x44

    if-lt v0, v1, :cond_22

    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x70

    if-gt v0, v1, :cond_22

    .line 2138
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mIvGpsAngle:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->compass_east:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2139
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$34(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2141
    :cond_22
    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x71

    if-lt v0, v1, :cond_23

    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x9d

    if-gt v0, v1, :cond_23

    .line 2142
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mIvGpsAngle:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->compass_southeast:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2143
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$34(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c00b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2145
    :cond_23
    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x9e

    if-lt v0, v1, :cond_24

    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0xca

    if-gt v0, v1, :cond_24

    .line 2146
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mIvGpsAngle:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->compass_south:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2147
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$34(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c00b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2149
    :cond_24
    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0xcb

    if-lt v0, v1, :cond_25

    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0xf7

    if-gt v0, v1, :cond_25

    .line 2150
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mIvGpsAngle:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->compass_southwest:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2151
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$34(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c00b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2153
    :cond_25
    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0xf8

    if-lt v0, v1, :cond_26

    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x124

    if-gt v0, v1, :cond_26

    .line 2154
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mIvGpsAngle:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->compass_west:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2155
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$34(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c00b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2157
    :cond_26
    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x125

    if-lt v0, v1, :cond_0

    sget v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    const/16 v1, 0x151

    if-gt v0, v1, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mIvGpsAngle:Landroid/widget/ImageView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->compass_northwest:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2159
    iget-object v0, p0, Lcom/android/launcher4/Launcher$10;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$34(Lcom/android/launcher4/Launcher;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c00b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1951
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_0
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

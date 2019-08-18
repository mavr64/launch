.class Lcom/fyt/widget/DigitClock$1;
.super Ljava/lang/Object;
.source "DigitClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyt/widget/DigitClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyt/widget/DigitClock;


# direct methods
.method constructor <init>(Lcom/fyt/widget/DigitClock;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 104
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-virtual {v5}, Lcom/fyt/widget/DigitClock;->postInvalidate()V

    .line 105
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$0(Lcom/fyt/widget/DigitClock;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 106
    .local v0, "b24":Z
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$0(Lcom/fyt/widget/DigitClock;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/syu/widget/music/util/TimeUtil;->getCurStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "hm":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 109
    .local v4, "times":[C
    const/4 v2, -0x1

    .line 110
    .local v2, "index":I
    array-length v3, v4

    .line 112
    .local v3, "len":I
    if-ne v3, v10, :cond_1

    .line 113
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$1(Lcom/fyt/widget/DigitClock;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$1(Lcom/fyt/widget/DigitClock;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 119
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/String;

    new-array v6, v9, [C

    aget-char v7, v4, v8

    aput-char v7, v6, v8

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 120
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$2(Lcom/fyt/widget/DigitClock;)[I

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 121
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$1(Lcom/fyt/widget/DigitClock;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v6}, Lcom/fyt/widget/DigitClock;->access$2(Lcom/fyt/widget/DigitClock;)[I

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 123
    new-instance v5, Ljava/lang/String;

    new-array v6, v9, [C

    aget-char v7, v4, v9

    aput-char v7, v6, v8

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 124
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$2(Lcom/fyt/widget/DigitClock;)[I

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 125
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$3(Lcom/fyt/widget/DigitClock;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v6}, Lcom/fyt/widget/DigitClock;->access$2(Lcom/fyt/widget/DigitClock;)[I

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 127
    new-instance v5, Ljava/lang/String;

    new-array v6, v9, [C

    const/4 v7, 0x2

    aget-char v7, v4, v7

    aput-char v7, v6, v8

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 128
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$2(Lcom/fyt/widget/DigitClock;)[I

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 129
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$4(Lcom/fyt/widget/DigitClock;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v6}, Lcom/fyt/widget/DigitClock;->access$2(Lcom/fyt/widget/DigitClock;)[I

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 131
    new-instance v5, Ljava/lang/String;

    new-array v6, v9, [C

    aget-char v7, v4, v10

    aput-char v7, v6, v8

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 132
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$2(Lcom/fyt/widget/DigitClock;)[I

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 133
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$5(Lcom/fyt/widget/DigitClock;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v6}, Lcom/fyt/widget/DigitClock;->access$2(Lcom/fyt/widget/DigitClock;)[I

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 144
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$6(Lcom/fyt/widget/DigitClock;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v6}, Lcom/fyt/widget/DigitClock;->access$7(Lcom/fyt/widget/DigitClock;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    return-void

    .line 115
    :cond_1
    if-le v3, v10, :cond_0

    .line 116
    iget-object v5, p0, Lcom/fyt/widget/DigitClock$1;->this$0:Lcom/fyt/widget/DigitClock;

    invoke-static {v5}, Lcom/fyt/widget/DigitClock;->access$1(Lcom/fyt/widget/DigitClock;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

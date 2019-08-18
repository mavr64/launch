.class public Lcom/fyt/widget/DigitClock;
.super Landroid/widget/RelativeLayout;
.source "DigitClock.java"


# instance fields
.field private context:Landroid/content/Context;

.field private filter:Landroid/content/IntentFilter;

.field private images:[I

.field private timeHandler:Landroid/os/Handler;

.field private timeRunnable:Ljava/lang/Runnable;

.field private tv1:Landroid/widget/TextView;

.field private tv2:Landroid/widget/TextView;

.field private tv3:Landroid/widget/TextView;

.field private tv4:Landroid/widget/TextView;

.field private tv5:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 20
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_00:I

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_01:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 21
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_02:I

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_03:I

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_04:I

    aput v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_05:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 22
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_06:I

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_07:I

    aput v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_08:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 23
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_09:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/fyt/widget/DigitClock;->images:[I

    .line 102
    new-instance v0, Lcom/fyt/widget/DigitClock$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/DigitClock$1;-><init>(Lcom/fyt/widget/DigitClock;)V

    iput-object v0, p0, Lcom/fyt/widget/DigitClock;->timeRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcom/fyt/widget/DigitClock;->context:Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Lcom/fyt/widget/DigitClock;->init(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/fyt/widget/DigitClock;->initViews()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 20
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_00:I

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_01:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 21
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_02:I

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_03:I

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_04:I

    aput v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_05:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 22
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_06:I

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_07:I

    aput v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_08:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 23
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_09:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/fyt/widget/DigitClock;->images:[I

    .line 102
    new-instance v0, Lcom/fyt/widget/DigitClock$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/DigitClock$1;-><init>(Lcom/fyt/widget/DigitClock;)V

    iput-object v0, p0, Lcom/fyt/widget/DigitClock;->timeRunnable:Ljava/lang/Runnable;

    .line 43
    iput-object p1, p0, Lcom/fyt/widget/DigitClock;->context:Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lcom/fyt/widget/DigitClock;->init(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Lcom/fyt/widget/DigitClock;->initViews()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;
    .param p3, "arg2"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 20
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_00:I

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_01:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 21
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_02:I

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_03:I

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_04:I

    aput v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_05:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 22
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_06:I

    aput v2, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_07:I

    aput v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_08:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 23
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->num_09:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/fyt/widget/DigitClock;->images:[I

    .line 102
    new-instance v0, Lcom/fyt/widget/DigitClock$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/DigitClock$1;-><init>(Lcom/fyt/widget/DigitClock;)V

    iput-object v0, p0, Lcom/fyt/widget/DigitClock;->timeRunnable:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/fyt/widget/DigitClock;->context:Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Lcom/fyt/widget/DigitClock;->init(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/fyt/widget/DigitClock;->initViews()V

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/fyt/widget/DigitClock;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fyt/widget/DigitClock;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fyt/widget/DigitClock;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fyt/widget/DigitClock;->tv1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fyt/widget/DigitClock;)[I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fyt/widget/DigitClock;->images:[I

    return-object v0
.end method

.method static synthetic access$3(Lcom/fyt/widget/DigitClock;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fyt/widget/DigitClock;->tv2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/fyt/widget/DigitClock;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fyt/widget/DigitClock;->tv4:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/fyt/widget/DigitClock;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fyt/widget/DigitClock;->tv5:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/fyt/widget/DigitClock;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fyt/widget/DigitClock;->timeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/fyt/widget/DigitClock;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fyt/widget/DigitClock;->timeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    return-void
.end method

.method private initViews()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 58
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/fyt/widget/DigitClock;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/fyt/widget/DigitClock;->tv1:Landroid/widget/TextView;

    .line 59
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/fyt/widget/DigitClock;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/fyt/widget/DigitClock;->tv2:Landroid/widget/TextView;

    .line 60
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/fyt/widget/DigitClock;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/fyt/widget/DigitClock;->tv3:Landroid/widget/TextView;

    .line 61
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/fyt/widget/DigitClock;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/fyt/widget/DigitClock;->tv4:Landroid/widget/TextView;

    .line 62
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/fyt/widget/DigitClock;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/fyt/widget/DigitClock;->tv5:Landroid/widget/TextView;

    .line 64
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv1:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setId(I)V

    .line 65
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv2:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setId(I)V

    .line 66
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv3:Landroid/widget/TextView;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setId(I)V

    .line 67
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv4:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setId(I)V

    .line 68
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv5:Landroid/widget/TextView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setId(I)V

    .line 69
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv1:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v0}, Lcom/fyt/widget/DigitClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v1, "params2":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 76
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv2:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v1}, Lcom/fyt/widget/DigitClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v2, "params3":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv2:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v2, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 79
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv3:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v2}, Lcom/fyt/widget/DigitClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v3, "params4":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv3:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v3, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 84
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv4:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v3}, Lcom/fyt/widget/DigitClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v4, "params5":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv4:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 88
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv5:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v4}, Lcom/fyt/widget/DigitClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v5, p0, Lcom/fyt/widget/DigitClock;->tv3:Landroid/widget/TextView;

    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v6

    iget v6, v6, Lshare/ResValue;->num_dot:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 90
    invoke-direct {p0}, Lcom/fyt/widget/DigitClock;->timeRun()V

    .line 91
    return-void
.end method

.method private timeRun()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fyt/widget/DigitClock;->timeHandler:Landroid/os/Handler;

    .line 95
    iget-object v0, p0, Lcom/fyt/widget/DigitClock;->timeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fyt/widget/DigitClock;->timeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

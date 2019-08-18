.class public Lcom/fyt/widget/WeekDay;
.super Landroid/widget/TextView;
.source "WeekDay.java"


# static fields
.field public static mWeekDay:Lcom/fyt/widget/WeekDay;


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;

.field private msp:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0}, Lcom/fyt/widget/WeekDay;->init()V

    .line 45
    iput-object p1, p0, Lcom/fyt/widget/WeekDay;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object p1, p0, Lcom/fyt/widget/WeekDay;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lcom/fyt/widget/WeekDay;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0}, Lcom/fyt/widget/WeekDay;->init()V

    .line 29
    iput-object p1, p0, Lcom/fyt/widget/WeekDay;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static getWeekDay()Lcom/fyt/widget/WeekDay;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/fyt/widget/WeekDay;->mWeekDay:Lcom/fyt/widget/WeekDay;

    return-object v0
.end method


# virtual methods
.method init()V
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/fyt/widget/WeekDay;->mWeekDay:Lcom/fyt/widget/WeekDay;

    .line 54
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 59
    invoke-virtual {p0}, Lcom/fyt/widget/WeekDay;->setDate()V

    .line 60
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 65
    return-void
.end method

.method public setDate()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->curWeek:I

    invoke-virtual {p0, v1}, Lcom/fyt/widget/WeekDay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, "mTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/fyt/widget/WeekDay;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/syu/widget/music/util/TimeUtil;->getWeekDay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-void
.end method

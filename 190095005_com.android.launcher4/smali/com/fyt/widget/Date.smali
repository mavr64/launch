.class public Lcom/fyt/widget/Date;
.super Landroid/widget/TextView;
.source "Date.java"


# static fields
.field public static mDate:Lcom/fyt/widget/Date;


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/fyt/widget/Date;->init()V

    .line 41
    iput-object p1, p0, Lcom/fyt/widget/Date;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p1, p0, Lcom/fyt/widget/Date;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p0}, Lcom/fyt/widget/Date;->init()V

    .line 36
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
    invoke-virtual {p0}, Lcom/fyt/widget/Date;->init()V

    .line 29
    iput-object p1, p0, Lcom/fyt/widget/Date;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static getDate()Lcom/fyt/widget/Date;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fyt/widget/Date;->mDate:Lcom/fyt/widget/Date;

    return-object v0
.end method

.method private getDateStringFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "timeWidgetShow"    # I

    .prologue
    .line 80
    packed-switch p1, :pswitch_data_0

    .line 91
    const-string v0, "yyyy/MM/dd"

    .line 94
    .local v0, "strFormat":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 82
    .end local v0    # "strFormat":Ljava/lang/String;
    :pswitch_0
    const-string v0, "yyyy-MM-dd"

    .line 83
    .restart local v0    # "strFormat":Ljava/lang/String;
    goto :goto_0

    .line 85
    .end local v0    # "strFormat":Ljava/lang/String;
    :pswitch_1
    const-string v0, "yyyy/MM/dd"

    .line 86
    .restart local v0    # "strFormat":Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v0    # "strFormat":Ljava/lang/String;
    :pswitch_2
    const-string v0, "yyyy.MM.dd"

    .line 89
    .restart local v0    # "strFormat":Ljava/lang/String;
    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method init()V
    .locals 0

    .prologue
    .line 45
    sput-object p0, Lcom/fyt/widget/Date;->mDate:Lcom/fyt/widget/Date;

    .line 50
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 55
    invoke-virtual {p0}, Lcom/fyt/widget/Date;->setDate()V

    .line 59
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 64
    return-void
.end method

.method public setDate()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fyt/widget/Date;->mContext:Landroid/content/Context;

    .line 70
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 71
    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 70
    invoke-direct {p0, v1}, Lcom/fyt/widget/Date;->getDateStringFormat(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lcom/syu/widget/music/util/TimeUtil;->getDateOfToday(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyt/widget/Date;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

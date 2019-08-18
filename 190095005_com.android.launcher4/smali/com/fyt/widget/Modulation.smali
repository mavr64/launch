.class public Lcom/fyt/widget/Modulation;
.super Landroid/widget/TextView;
.source "Modulation.java"


# static fields
.field public static modulation:Lcom/fyt/widget/Modulation;


# instance fields
.field private bRegister:Ljava/lang/Boolean;

.field private filter:Landroid/content/IntentFilter;

.field private gmeTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyt/widget/Modulation;->gmeTypeface:Landroid/graphics/Typeface;

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fyt/widget/Modulation;->bRegister:Ljava/lang/Boolean;

    .line 54
    invoke-direct {p0, p1}, Lcom/fyt/widget/Modulation;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyt/widget/Modulation;->gmeTypeface:Landroid/graphics/Typeface;

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fyt/widget/Modulation;->bRegister:Ljava/lang/Boolean;

    .line 49
    invoke-direct {p0, p1}, Lcom/fyt/widget/Modulation;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyt/widget/Modulation;->gmeTypeface:Landroid/graphics/Typeface;

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fyt/widget/Modulation;->bRegister:Ljava/lang/Boolean;

    .line 44
    invoke-direct {p0, p1}, Lcom/fyt/widget/Modulation;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public static getModulation()Lcom/fyt/widget/Modulation;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/fyt/widget/Modulation;->modulation:Lcom/fyt/widget/Modulation;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sput-object p0, Lcom/fyt/widget/Modulation;->modulation:Lcom/fyt/widget/Modulation;

    .line 64
    return-void
.end method

.method private setTypeface()V
    .locals 2

    .prologue
    .line 115
    :try_start_0
    const-string v1, "/system/fonts/MICROGME.TTF"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/fyt/widget/Modulation;->gmeTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/fyt/widget/Modulation;->gmeTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/fyt/widget/Modulation;->gmeTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Lcom/fyt/widget/Modulation;->setTypeface(Landroid/graphics/Typeface;)V

    .line 123
    :cond_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getSmallTime(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/fyt/widget/Modulation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 102
    .local v0, "b24":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 104
    .local v1, "flag":I
    const-string v2, ""

    .line 105
    .local v2, "format":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 107
    if-nez v1, :cond_1

    const v3, 0x7f0c0099

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    :cond_0
    :goto_0
    return-object v2

    .line 107
    :cond_1
    const v3, 0x7f0c009a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/fyt/widget/Modulation;->setModulation()V

    .line 73
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 74
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 79
    return-void
.end method

.method public setModulation()V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    const v1, 0x7f0a0018

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/fyt/widget/Modulation;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fyt/widget/Modulation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fyt/widget/Modulation;->getSmallTime(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->im_am:I

    invoke-virtual {p0, v0}, Lcom/fyt/widget/Modulation;->setBackgroundResource(I)V

    .line 98
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/fyt/widget/Modulation;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fyt/widget/Modulation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fyt/widget/Modulation;->getSmallTime(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->im_pm:I

    invoke-virtual {p0, v0}, Lcom/fyt/widget/Modulation;->setBackgroundResource(I)V

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyt/widget/Modulation;->setBackgroundResource(I)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/fyt/widget/Modulation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyt/widget/Modulation;->getSmallTime(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyt/widget/Modulation;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.class public Lcom/fyt/widget/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# static fields
.field public static clock:Lcom/fyt/widget/Clock;


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private gmeTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyt/widget/Clock;->gmeTypeface:Landroid/graphics/Typeface;

    .line 36
    invoke-direct {p0, p1}, Lcom/fyt/widget/Clock;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyt/widget/Clock;->gmeTypeface:Landroid/graphics/Typeface;

    .line 31
    invoke-direct {p0, p1}, Lcom/fyt/widget/Clock;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyt/widget/Clock;->gmeTypeface:Landroid/graphics/Typeface;

    .line 26
    invoke-direct {p0, p1}, Lcom/fyt/widget/Clock;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public static getClock()Lcom/fyt/widget/Clock;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fyt/widget/Clock;->clock:Lcom/fyt/widget/Clock;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sput-object p0, Lcom/fyt/widget/Clock;->clock:Lcom/fyt/widget/Clock;

    .line 46
    return-void
.end method

.method private setTypeface()V
    .locals 2

    .prologue
    .line 80
    :try_start_0
    const-string v1, "/system/fonts/MICROGME.TTF"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/fyt/widget/Clock;->gmeTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/fyt/widget/Clock;->gmeTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/fyt/widget/Clock;->gmeTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Lcom/fyt/widget/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    :cond_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getSmallTime(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/fyt/widget/Clock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 68
    .local v0, "b24":Z
    const-string v1, ""

    .line 69
    .local v1, "format":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 70
    const-string v1, "H:mm"

    .line 74
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 72
    :cond_0
    const-string v1, "h:mm"

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/fyt/widget/Clock;->setTime()V

    .line 54
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 55
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 60
    return-void
.end method

.method public setTime()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/fyt/widget/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyt/widget/Clock;->getSmallTime(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyt/widget/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

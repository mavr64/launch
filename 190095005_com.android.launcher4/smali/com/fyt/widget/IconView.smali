.class public Lcom/fyt/widget/IconView;
.super Landroid/widget/FrameLayout;
.source "IconView.java"


# instance fields
.field private app_name:I

.field public mTitle:Landroid/widget/TextView;

.field private padding:I

.field private paddingpress:I

.field receiver:Landroid/content/BroadcastReceiver;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/fyt/widget/IconView;->app_name:I

    .line 143
    new-instance v0, Lcom/fyt/widget/IconView$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/IconView$1;-><init>(Lcom/fyt/widget/IconView;)V

    iput-object v0, p0, Lcom/fyt/widget/IconView;->receiver:Landroid/content/BroadcastReceiver;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fyt/widget/IconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/fyt/widget/IconView;->app_name:I

    .line 143
    new-instance v0, Lcom/fyt/widget/IconView$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/IconView$1;-><init>(Lcom/fyt/widget/IconView;)V

    iput-object v0, p0, Lcom/fyt/widget/IconView;->receiver:Landroid/content/BroadcastReceiver;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/fyt/widget/IconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/fyt/widget/IconView;->app_name:I

    .line 143
    new-instance v0, Lcom/fyt/widget/IconView$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/IconView$1;-><init>(Lcom/fyt/widget/IconView;)V

    iput-object v0, p0, Lcom/fyt/widget/IconView;->receiver:Landroid/content/BroadcastReceiver;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/fyt/widget/IconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 50
    sget-object v2, Lcom/android/launcher4/R$styleable;->IconView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/fyt/widget/IconView;->app_name:I

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 58
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0d009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/fyt/widget/IconView;->padding:I

    .line 59
    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/fyt/widget/IconView;->textSize:I

    .line 61
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/fyt/widget/IconView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fyt/widget/IconView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 139
    invoke-virtual {p0}, Lcom/fyt/widget/IconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fyt/widget/IconView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 67
    iget v2, p0, Lcom/fyt/widget/IconView;->app_name:I

    if-ltz v2, :cond_0

    .line 69
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fyt/widget/IconView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fyt/widget/IconView;->mTitle:Landroid/widget/TextView;

    .line 70
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x51

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 75
    invoke-virtual {p0}, Lcom/fyt/widget/IconView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    iget v2, p0, Lcom/fyt/widget/IconView;->paddingpress:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/fyt/widget/IconView;->mTitle:Landroid/widget/TextView;

    iget v3, p0, Lcom/fyt/widget/IconView;->app_name:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object v2, p0, Lcom/fyt/widget/IconView;->mTitle:Landroid/widget/TextView;

    iget v3, p0, Lcom/fyt/widget/IconView;->textSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 91
    .local v1, "typeface":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/fyt/widget/IconView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    iget-object v2, p0, Lcom/fyt/widget/IconView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/fyt/widget/IconView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    return-void

    .line 79
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget v2, p0, Lcom/fyt/widget/IconView;->padding:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v3, -0x2

    .line 100
    invoke-virtual {p0}, Lcom/fyt/widget/IconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/fyt/widget/IconView;->paddingpress:I

    .line 103
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget v1, p0, Lcom/fyt/widget/IconView;->paddingpress:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/fyt/widget/IconView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/fyt/widget/IconView;->removeView(Landroid/view/View;)V

    .line 113
    iget-object v1, p0, Lcom/fyt/widget/IconView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/fyt/widget/IconView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 119
    return-void

    .line 109
    :cond_0
    iget v1, p0, Lcom/fyt/widget/IconView;->padding:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public updateStr()V
    .locals 4

    .prologue
    .line 122
    const-string v0, "hy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateStr"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/fyt/widget/IconView;->app_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTitle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fyt/widget/IconView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v0, p0, Lcom/fyt/widget/IconView;->app_name:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/fyt/widget/IconView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/fyt/widget/IconView;->mTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/fyt/widget/IconView;->app_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    :cond_0
    return-void
.end method

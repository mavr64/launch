.class public Lcom/android/launcher4/HolographicImageView;
.super Landroid/widget/ImageView;
.source "HolographicImageView.java"


# instance fields
.field private final mHolographicHelper:Lcom/android/launcher4/HolographicViewHelper;

.field private mHotwordOn:Z

.field private mIsFocused:Z

.field private mIsPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/HolographicImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/HolographicImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v1, Lcom/android/launcher4/HolographicViewHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher4/HolographicViewHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher4/HolographicImageView;->mHolographicHelper:Lcom/android/launcher4/HolographicViewHelper;

    .line 50
    sget-object v1, Lcom/android/launcher4/R$styleable;->HolographicLinearLayout:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher4/HolographicImageView;->mHotwordOn:Z

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    new-instance v1, Lcom/android/launcher4/HolographicImageView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher4/HolographicImageView$1;-><init>(Lcom/android/launcher4/HolographicImageView;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher4/HolographicImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    new-instance v1, Lcom/android/launcher4/HolographicImageView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher4/HolographicImageView$2;-><init>(Lcom/android/launcher4/HolographicImageView;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher4/HolographicImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/HolographicImageView;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/launcher4/HolographicImageView;->mIsPressed:Z

    return v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/HolographicImageView;Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/launcher4/HolographicImageView;->mIsPressed:Z

    return-void
.end method

.method static synthetic access$2(Lcom/android/launcher4/HolographicImageView;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/launcher4/HolographicImageView;->mIsFocused:Z

    return v0
.end method

.method static synthetic access$3(Lcom/android/launcher4/HolographicImageView;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/launcher4/HolographicImageView;->mIsFocused:Z

    return-void
.end method

.method private isHotwordOn()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/launcher4/HolographicImageView;->mHotwordOn:Z

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 85
    iget-object v2, p0, Lcom/android/launcher4/HolographicImageView;->mHolographicHelper:Lcom/android/launcher4/HolographicViewHelper;

    invoke-virtual {v2, p0}, Lcom/android/launcher4/HolographicViewHelper;->generatePressedFocusedStates(Landroid/widget/ImageView;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher4/HolographicImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 88
    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 89
    .local v1, "sld":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0}, Lcom/android/launcher4/HolographicImageView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 90
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 92
    .end local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-void
.end method

.method invalidatePressedFocusedStates()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher4/HolographicImageView;->mHolographicHelper:Lcom/android/launcher4/HolographicViewHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher4/HolographicViewHelper;->invalidatePressedFocusedStates(Landroid/widget/ImageView;)V

    .line 79
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 117
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 118
    .local v0, "drawableState":[I
    invoke-direct {p0}, Lcom/android/launcher4/HolographicImageView;->isHotwordOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f01000f

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher4/HolographicImageView;->mergeDrawableStates([I[I)[I

    .line 121
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v0, p0, Lcom/android/launcher4/HolographicImageView;->mHolographicHelper:Lcom/android/launcher4/HolographicViewHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher4/HolographicViewHelper;->generatePressedFocusedStates(Landroid/widget/ImageView;)V

    .line 101
    return-void
.end method

.method public setHotwordState(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/launcher4/HolographicImageView;->mHotwordOn:Z

    if-ne p1, v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher4/HolographicImageView;->mHotwordOn:Z

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher4/HolographicImageView;->refreshDrawableState()V

    goto :goto_0
.end method

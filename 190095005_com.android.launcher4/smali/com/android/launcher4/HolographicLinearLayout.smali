.class public Lcom/android/launcher4/HolographicLinearLayout;
.super Landroid/widget/LinearLayout;
.source "HolographicLinearLayout.java"


# instance fields
.field private final mHolographicHelper:Lcom/android/launcher4/HolographicViewHelper;

.field private mHotwordOn:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewId:I

.field private mIsFocused:Z

.field private mIsPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/HolographicLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/HolographicLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-object v1, Lcom/android/launcher4/R$styleable;->HolographicLinearLayout:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/HolographicLinearLayout;->mImageViewId:I

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher4/HolographicLinearLayout;->mHotwordOn:Z

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-virtual {p0, v2}, Lcom/android/launcher4/HolographicLinearLayout;->setWillNotDraw(Z)V

    .line 60
    new-instance v1, Lcom/android/launcher4/HolographicViewHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher4/HolographicViewHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher4/HolographicLinearLayout;->mHolographicHelper:Lcom/android/launcher4/HolographicViewHelper;

    .line 62
    new-instance v1, Lcom/android/launcher4/HolographicLinearLayout$1;

    invoke-direct {v1, p0}, Lcom/android/launcher4/HolographicLinearLayout$1;-><init>(Lcom/android/launcher4/HolographicLinearLayout;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher4/HolographicLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    new-instance v1, Lcom/android/launcher4/HolographicLinearLayout$2;

    invoke-direct {v1, p0}, Lcom/android/launcher4/HolographicLinearLayout$2;-><init>(Lcom/android/launcher4/HolographicLinearLayout;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher4/HolographicLinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/HolographicLinearLayout;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/launcher4/HolographicLinearLayout;->mIsPressed:Z

    return v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/HolographicLinearLayout;Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/launcher4/HolographicLinearLayout;->mIsPressed:Z

    return-void
.end method

.method static synthetic access$2(Lcom/android/launcher4/HolographicLinearLayout;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/launcher4/HolographicLinearLayout;->mIsFocused:Z

    return v0
.end method

.method static synthetic access$3(Lcom/android/launcher4/HolographicLinearLayout;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/launcher4/HolographicLinearLayout;->mIsFocused:Z

    return-void
.end method

.method private isHotwordOn()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/launcher4/HolographicLinearLayout;->mHotwordOn:Z

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 88
    iget-object v2, p0, Lcom/android/launcher4/HolographicLinearLayout;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/launcher4/HolographicLinearLayout;->mHolographicHelper:Lcom/android/launcher4/HolographicViewHelper;

    iget-object v3, p0, Lcom/android/launcher4/HolographicLinearLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/android/launcher4/HolographicViewHelper;->generatePressedFocusedStates(Landroid/widget/ImageView;)V

    .line 90
    iget-object v2, p0, Lcom/android/launcher4/HolographicLinearLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 92
    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 93
    .local v1, "sld":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0}, Lcom/android/launcher4/HolographicLinearLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 94
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 97
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-void
.end method

.method invalidatePressedFocusedStates()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher4/HolographicLinearLayout;->mHolographicHelper:Lcom/android/launcher4/HolographicViewHelper;

    iget-object v1, p0, Lcom/android/launcher4/HolographicLinearLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/HolographicViewHelper;->invalidatePressedFocusedStates(Landroid/widget/ImageView;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher4/HolographicLinearLayout;->invalidate()V

    .line 102
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 130
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 131
    .local v0, "drawableState":[I
    invoke-direct {p0}, Lcom/android/launcher4/HolographicLinearLayout;->isHotwordOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f01000f

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher4/HolographicLinearLayout;->mergeDrawableStates([I[I)[I

    .line 134
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher4/HolographicLinearLayout;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 111
    iget v0, p0, Lcom/android/launcher4/HolographicLinearLayout;->mImageViewId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher4/HolographicLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher4/HolographicLinearLayout;->mImageView:Landroid/widget/ImageView;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/HolographicLinearLayout;->mHolographicHelper:Lcom/android/launcher4/HolographicViewHelper;

    iget-object v1, p0, Lcom/android/launcher4/HolographicLinearLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/HolographicViewHelper;->generatePressedFocusedStates(Landroid/widget/ImageView;)V

    .line 114
    return-void
.end method

.method public setHotwordState(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/launcher4/HolographicLinearLayout;->mHotwordOn:Z

    if-ne p1, v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher4/HolographicLinearLayout;->mHotwordOn:Z

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher4/HolographicLinearLayout;->refreshDrawableState()V

    goto :goto_0
.end method

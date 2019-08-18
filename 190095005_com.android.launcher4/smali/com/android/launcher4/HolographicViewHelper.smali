.class public Lcom/android/launcher4/HolographicViewHelper;
.super Ljava/lang/Object;
.source "HolographicViewHelper.java"


# instance fields
.field private mHighlightColor:I

.field private mHotwordColor:I

.field private mStatesUpdated:Z

.field private final mTempCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/HolographicViewHelper;->mTempCanvas:Landroid/graphics/Canvas;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/HolographicViewHelper;->mHighlightColor:I

    .line 39
    const v1, 0x1060014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/HolographicViewHelper;->mHotwordColor:I

    .line 40
    return-void
.end method

.method private createImageWithOverlay(Landroid/widget/ImageView;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 98
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 103
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 105
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 106
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    return-object v0
.end method

.method private createOriginalImage(Landroid/widget/ImageView;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 81
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 80
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 85
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 87
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    return-object v0
.end method


# virtual methods
.method generatePressedFocusedStates(Landroid/widget/ImageView;)V
    .locals 11
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 46
    iget-boolean v7, p0, Lcom/android/launcher4/HolographicViewHelper;->mStatesUpdated:Z

    if-nez v7, :cond_0

    if-eqz p1, :cond_0

    .line 47
    iput-boolean v10, p0, Lcom/android/launcher4/HolographicViewHelper;->mStatesUpdated:Z

    .line 48
    iget-object v7, p0, Lcom/android/launcher4/HolographicViewHelper;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v7}, Lcom/android/launcher4/HolographicViewHelper;->createOriginalImage(Landroid/widget/ImageView;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 49
    .local v2, "original":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/launcher4/HolographicViewHelper;->mTempCanvas:Landroid/graphics/Canvas;

    iget v8, p0, Lcom/android/launcher4/HolographicViewHelper;->mHighlightColor:I

    invoke-direct {p0, p1, v7, v8}, Lcom/android/launcher4/HolographicViewHelper;->createImageWithOverlay(Landroid/widget/ImageView;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 50
    .local v4, "outline":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/launcher4/HolographicViewHelper;->mTempCanvas:Landroid/graphics/Canvas;

    iget v8, p0, Lcom/android/launcher4/HolographicViewHelper;->mHotwordColor:I

    invoke-direct {p0, p1, v7, v8}, Lcom/android/launcher4/HolographicViewHelper;->createImageWithOverlay(Landroid/widget/ImageView;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    .local v0, "hotword":Landroid/graphics/Bitmap;
    new-instance v3, Lcom/android/launcher4/FastBitmapDrawable;

    invoke-direct {v3, v2}, Lcom/android/launcher4/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    .local v3, "originalD":Lcom/android/launcher4/FastBitmapDrawable;
    new-instance v5, Lcom/android/launcher4/FastBitmapDrawable;

    invoke-direct {v5, v4}, Lcom/android/launcher4/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    .local v5, "outlineD":Lcom/android/launcher4/FastBitmapDrawable;
    new-instance v1, Lcom/android/launcher4/FastBitmapDrawable;

    invoke-direct {v1, v0}, Lcom/android/launcher4/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    .local v1, "hotwordD":Lcom/android/launcher4/FastBitmapDrawable;
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 57
    .local v6, "states":Landroid/graphics/drawable/StateListDrawable;
    new-array v7, v10, [I

    const v8, 0x10100a7

    aput v8, v7, v9

    invoke-virtual {v6, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 58
    new-array v7, v10, [I

    const v8, 0x101009c

    aput v8, v7, v9

    invoke-virtual {v6, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 59
    new-array v7, v10, [I

    const v8, 0x7f01000f

    aput v8, v7, v9

    invoke-virtual {v6, v7, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 60
    new-array v7, v9, [I

    invoke-virtual {v6, v7, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .end local v0    # "hotword":Landroid/graphics/Bitmap;
    .end local v1    # "hotwordD":Lcom/android/launcher4/FastBitmapDrawable;
    .end local v2    # "original":Landroid/graphics/Bitmap;
    .end local v3    # "originalD":Lcom/android/launcher4/FastBitmapDrawable;
    .end local v4    # "outline":Landroid/graphics/Bitmap;
    .end local v5    # "outlineD":Lcom/android/launcher4/FastBitmapDrawable;
    .end local v6    # "states":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-void
.end method

.method invalidatePressedFocusedStates(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/HolographicViewHelper;->mStatesUpdated:Z

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 73
    :cond_0
    return-void
.end method

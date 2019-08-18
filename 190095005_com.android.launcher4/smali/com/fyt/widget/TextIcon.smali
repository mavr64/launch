.class public Lcom/fyt/widget/TextIcon;
.super Landroid/widget/TextView;
.source "TextIcon.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private iconId:I

.field private mHeight:I

.field private mWidth:I

.field private pressedId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fyt/widget/TextIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fyt/widget/TextIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v1, p0, Lcom/fyt/widget/TextIcon;->iconId:I

    .line 21
    iput v1, p0, Lcom/fyt/widget/TextIcon;->pressedId:I

    .line 27
    sget-object v1, Lcom/android/launcher4/R$styleable;->TextIcon:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/fyt/widget/TextIcon;->iconId:I

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/fyt/widget/TextIcon;->pressedId:I

    .line 31
    invoke-direct {p0}, Lcom/fyt/widget/TextIcon;->init()V

    .line 32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/fyt/widget/TextIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/fyt/widget/TextIcon;->mWidth:I

    iput v1, p0, Lcom/fyt/widget/TextIcon;->mHeight:I

    .line 46
    invoke-virtual {p0}, Lcom/fyt/widget/TextIcon;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getScaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # F

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onGlobalLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/fyt/widget/TextIcon;->getWidth()I

    move-result v5

    .line 53
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/fyt/widget/TextIcon;->getHeight()I

    move-result v3

    .line 54
    .local v3, "height":I
    if-lez v5, :cond_1

    if-lez v3, :cond_1

    .line 57
    iget v7, p0, Lcom/fyt/widget/TextIcon;->iconId:I

    if-lez v7, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/fyt/widget/TextIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/fyt/widget/TextIcon;->iconId:I

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 59
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 60
    .local v2, "bwith":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 61
    .local v0, "bheight":I
    iget v7, p0, Lcom/fyt/widget/TextIcon;->mWidth:I

    int-to-float v7, v7

    int-to-float v8, v2

    div-float v6, v7, v8

    .line 62
    .local v6, "wscale":F
    iget v7, p0, Lcom/fyt/widget/TextIcon;->mHeight:I

    int-to-float v7, v7

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 64
    .local v4, "hscale":F
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    cmpl-float v8, v6, v4

    if-lez v8, :cond_2

    .end local v4    # "hscale":F
    :goto_0
    invoke-virtual {p0, v1, v4}, Lcom/fyt/widget/TextIcon;->getScaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v9, v7, v9, v9}, Lcom/fyt/widget/TextIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 66
    .end local v0    # "bheight":I
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bwith":I
    .end local v6    # "wscale":F
    :cond_0
    invoke-virtual {p0}, Lcom/fyt/widget/TextIcon;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 68
    :cond_1
    return-void

    .restart local v0    # "bheight":I
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bwith":I
    .restart local v4    # "hscale":F
    .restart local v6    # "wscale":F
    :cond_2
    move v4, v6

    .line 64
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget v0, p0, Lcom/fyt/widget/TextIcon;->pressedId:I

    invoke-virtual {p0, v0}, Lcom/fyt/widget/TextIcon;->setIcon(I)V

    .line 77
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 74
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 75
    :cond_2
    iget v0, p0, Lcom/fyt/widget/TextIcon;->iconId:I

    invoke-virtual {p0, v0}, Lcom/fyt/widget/TextIcon;->setIcon(I)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 8
    .param p1, "res"    # I

    .prologue
    const/4 v7, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/fyt/widget/TextIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 92
    .local v2, "bwith":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 93
    .local v0, "bheight":I
    iget v5, p0, Lcom/fyt/widget/TextIcon;->mWidth:I

    int-to-float v5, v5

    int-to-float v6, v2

    div-float v4, v5, v6

    .line 94
    .local v4, "wscale":F
    iget v5, p0, Lcom/fyt/widget/TextIcon;->mHeight:I

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 95
    .local v3, "hscale":F
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    cmpl-float v6, v4, v3

    if-lez v6, :cond_0

    .end local v3    # "hscale":F
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/fyt/widget/TextIcon;->getScaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v7, v5, v7, v7}, Lcom/fyt/widget/TextIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void

    .restart local v3    # "hscale":F
    :cond_0
    move v3, v4

    .line 95
    goto :goto_0
.end method

.method public setIdToIcon(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/fyt/widget/TextIcon;->iconId:I

    .line 82
    return-void
.end method

.method public setIdToPress(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/fyt/widget/TextIcon;->pressedId:I

    .line 86
    return-void
.end method

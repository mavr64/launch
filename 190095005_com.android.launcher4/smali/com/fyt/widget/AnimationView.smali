.class public Lcom/fyt/widget/AnimationView;
.super Landroid/view/View;
.source "AnimationView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field protected animId:I

.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fyt/widget/AnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fyt/widget/AnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fyt/widget/AnimationView;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 24
    const/4 v1, -0x1

    iput v1, p0, Lcom/fyt/widget/AnimationView;->animId:I

    .line 28
    sget-object v1, Lcom/android/launcher4/R$styleable;->AnimationView:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/fyt/widget/AnimationView;->animId:I

    .line 30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    invoke-direct {p0, p1}, Lcom/fyt/widget/AnimationView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    iget v0, p0, Lcom/fyt/widget/AnimationView;->animId:I

    if-lez v0, :cond_0

    .line 44
    iget v0, p0, Lcom/fyt/widget/AnimationView;->animId:I

    invoke-virtual {p0, v0}, Lcom/fyt/widget/AnimationView;->setBackgroundResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/fyt/widget/AnimationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/fyt/widget/AnimationView;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 46
    iget-object v0, p0, Lcom/fyt/widget/AnimationView;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fyt/widget/AnimationView;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/fyt/widget/AnimationView;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 55
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 56
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fyt/widget/AnimationView;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/fyt/widget/AnimationView;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 63
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 64
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

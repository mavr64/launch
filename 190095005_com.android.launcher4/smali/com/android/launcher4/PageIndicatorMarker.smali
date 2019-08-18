.class public Lcom/android/launcher4/PageIndicatorMarker;
.super Landroid/widget/FrameLayout;
.source "PageIndicatorMarker.java"


# static fields
.field private static final MARKER_FADE_DURATION:I = 0xaf

.field private static final TAG:Ljava/lang/String; = "PageIndicator"


# instance fields
.field private mActiveMarker:Landroid/widget/ImageView;

.field private mInactiveMarker:Landroid/widget/ImageView;

.field private mIsActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/PageIndicatorMarker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/PageIndicatorMarker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mIsActive:Z

    .line 51
    return-void
.end method


# virtual methods
.method activate(Z)V
    .locals 6
    .param p1, "immediate"    # Z

    .prologue
    const-wide/16 v4, 0xaf

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 67
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 71
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 82
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mIsActive:Z

    .line 83
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 78
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method inactivate(Z)V
    .locals 6
    .param p1, "immediate"    # Z

    .prologue
    const-wide/16 v4, 0xaf

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 88
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 89
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 90
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 91
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 92
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 102
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mIsActive:Z

    .line 103
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 96
    iget-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method isActive()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mIsActive:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f11001d

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PageIndicatorMarker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f11001c

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PageIndicatorMarker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher4/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    .line 56
    return-void
.end method

.method setMarkerDrawables(II)V
    .locals 3
    .param p1, "activeResId"    # I
    .param p2, "inactiveResId"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/launcher4/PageIndicatorMarker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/launcher4/PageIndicatorMarker;->mActiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v1, p0, Lcom/android/launcher4/PageIndicatorMarker;->mInactiveMarker:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    return-void
.end method

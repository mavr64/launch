.class Lcom/android/launcher4/DeleteDropTarget$5;
.super Ljava/lang/Object;
.source "DeleteDropTarget.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/DeleteDropTarget;->createFlingToTrashAnimatorListener(Lcom/android/launcher4/DragLayer;Lcom/android/launcher4/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/DeleteDropTarget;

.field private final synthetic val$dragLayer:Lcom/android/launcher4/DragLayer;

.field private final synthetic val$scaleAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field private final synthetic val$x1:F

.field private final synthetic val$x2:F

.field private final synthetic val$x3:F

.field private final synthetic val$y1:F

.field private final synthetic val$y2:F

.field private final synthetic val$y3:F


# direct methods
.method constructor <init>(Lcom/android/launcher4/DeleteDropTarget;Lcom/android/launcher4/DragLayer;Landroid/animation/TimeInterpolator;FFFFFF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/DeleteDropTarget$5;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    iput-object p2, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$dragLayer:Lcom/android/launcher4/DragLayer;

    iput-object p3, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$scaleAlphaInterpolator:Landroid/animation/TimeInterpolator;

    iput p4, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$x1:F

    iput p5, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$x2:F

    iput p6, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$x3:F

    iput p7, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$y1:F

    iput p8, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$y2:F

    iput p9, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$y3:F

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 425
    iget-object v10, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$dragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v10}, Lcom/android/launcher4/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/DragView;

    .line 426
    .local v0, "dragView":Lcom/android/launcher4/DragView;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 427
    .local v4, "t":F
    iget-object v10, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$scaleAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v10, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    .line 428
    .local v5, "tp":F
    invoke-virtual {v0}, Lcom/android/launcher4/DragView;->getInitialScale()F

    move-result v2

    .line 429
    .local v2, "initialScale":F
    const/high16 v1, 0x3f000000    # 0.5f

    .line 430
    .local v1, "finalAlpha":F
    invoke-virtual {v0}, Lcom/android/launcher4/DragView;->getScaleX()F

    move-result v3

    .line 431
    .local v3, "scale":F
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v3

    invoke-virtual {v0}, Lcom/android/launcher4/DragView;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v7, v10, v11

    .line 432
    .local v7, "x1o":F
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v3

    invoke-virtual {v0}, Lcom/android/launcher4/DragView;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v9, v10, v11

    .line 433
    .local v9, "y1o":F
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v4

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$x1:F

    sub-float/2addr v11, v7

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v4

    mul-float/2addr v11, v12

    mul-float/2addr v11, v4

    iget v12, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$x2:F

    sub-float/2addr v12, v7

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 434
    mul-float v11, v4, v4

    iget v12, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$x3:F

    mul-float/2addr v11, v12

    .line 433
    add-float v6, v10, v11

    .line 435
    .local v6, "x":F
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v4

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$y1:F

    sub-float/2addr v11, v9

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v4

    mul-float/2addr v11, v12

    mul-float/2addr v11, v4

    iget v12, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$y2:F

    sub-float/2addr v12, v7

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 436
    mul-float v11, v4, v4

    iget v12, p0, Lcom/android/launcher4/DeleteDropTarget$5;->val$y3:F

    mul-float/2addr v11, v12

    .line 435
    add-float v8, v10, v11

    .line 438
    .local v8, "y":F
    invoke-virtual {v0, v6}, Lcom/android/launcher4/DragView;->setTranslationX(F)V

    .line 439
    invoke-virtual {v0, v8}, Lcom/android/launcher4/DragView;->setTranslationY(F)V

    .line 440
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v5

    mul-float/2addr v10, v2

    invoke-virtual {v0, v10}, Lcom/android/launcher4/DragView;->setScaleX(F)V

    .line 441
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v5

    mul-float/2addr v10, v2

    invoke-virtual {v0, v10}, Lcom/android/launcher4/DragView;->setScaleY(F)V

    .line 442
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v1

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v5

    mul-float/2addr v10, v11

    add-float/2addr v10, v1

    invoke-virtual {v0, v10}, Lcom/android/launcher4/DragView;->setAlpha(F)V

    .line 443
    return-void
.end method

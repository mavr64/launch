.class Lcom/android/launcher4/AppsCustomizeTabHost$3;
.super Ljava/lang/Object;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/AppsCustomizeTabHost;->onTabChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

.field private final synthetic val$duration:I

.field private final synthetic val$type:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;


# direct methods
.method constructor <init>(Lcom/android/launcher4/AppsCustomizeTabHost;Lcom/android/launcher4/AppsCustomizePagedView$ContentType;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    iput-object p2, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->val$type:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    iput p3, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->val$duration:I

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/AppsCustomizeTabHost$3;)Lcom/android/launcher4/AppsCustomizeTabHost;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 236
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$2(Lcom/android/launcher4/AppsCustomizeTabHost;)Lcom/android/launcher4/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher4/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v8

    if-lez v8, :cond_0

    .line 237
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$2(Lcom/android/launcher4/AppsCustomizeTabHost;)Lcom/android/launcher4/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher4/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v8

    if-gtz v8, :cond_1

    .line 238
    :cond_0
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$3(Lcom/android/launcher4/AppsCustomizeTabHost;)V

    .line 316
    :goto_0
    return-void

    .line 244
    :cond_1
    const/4 v8, 0x2

    new-array v6, v8, [I

    .line 245
    .local v6, "visiblePageRange":[I
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$2(Lcom/android/launcher4/AppsCustomizeTabHost;)Lcom/android/launcher4/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/launcher4/AppsCustomizePagedView;->getVisiblePages([I)V

    .line 246
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 248
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$3(Lcom/android/launcher4/AppsCustomizeTabHost;)V

    goto :goto_0

    .line 251
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v7, "visiblePages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    aget v2, v6, v8

    .local v2, "i":I
    :goto_1
    const/4 v8, 0x1

    aget v8, v6, v8

    if-le v2, v8, :cond_3

    .line 260
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$4(Lcom/android/launcher4/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v9}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$2(Lcom/android/launcher4/AppsCustomizeTabHost;)Lcom/android/launcher4/AppsCustomizePagedView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher4/AppsCustomizePagedView;->getScrollX()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 264
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_2
    if-gez v2, :cond_4

    .line 283
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$5(Lcom/android/launcher4/AppsCustomizeTabHost;)V

    .line 284
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    iget-object v9, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->val$type:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    invoke-static {v8, v9}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$6(Lcom/android/launcher4/AppsCustomizeTabHost;Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V

    .line 287
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$4(Lcom/android/launcher4/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    const-string v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 288
    .local v4, "outAnim":Landroid/animation/ObjectAnimator;
    new-instance v8, Lcom/android/launcher4/AppsCustomizeTabHost$3$1;

    invoke-direct {v8, p0}, Lcom/android/launcher4/AppsCustomizeTabHost$3$1;-><init>(Lcom/android/launcher4/AppsCustomizeTabHost$3;)V

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$2(Lcom/android/launcher4/AppsCustomizeTabHost;)Lcom/android/launcher4/AppsCustomizePagedView;

    move-result-object v8

    const-string v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 305
    .local v3, "inAnim":Landroid/animation/ObjectAnimator;
    new-instance v8, Lcom/android/launcher4/AppsCustomizeTabHost$3$2;

    invoke-direct {v8, p0}, Lcom/android/launcher4/AppsCustomizeTabHost$3$2;-><init>(Lcom/android/launcher4/AppsCustomizeTabHost$3;)V

    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    invoke-static {}, Lcom/android/launcher4/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 313
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 314
    iget v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->val$duration:I

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 315
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 253
    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    .end local v3    # "inAnim":Landroid/animation/ObjectAnimator;
    .end local v4    # "outAnim":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$2(Lcom/android/launcher4/AppsCustomizeTabHost;)Lcom/android/launcher4/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 265
    :cond_4
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 266
    .local v1, "child":Landroid/view/View;
    instance-of v8, v1, Lcom/android/launcher4/AppsCustomizeCellLayout;

    if-eqz v8, :cond_6

    move-object v8, v1

    .line 267
    check-cast v8, Lcom/android/launcher4/AppsCustomizeCellLayout;

    invoke-virtual {v8}, Lcom/android/launcher4/AppsCustomizeCellLayout;->resetChildrenOnKeyListeners()V

    .line 271
    :cond_5
    :goto_3
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/launcher4/PagedViewWidget;->setDeletePreviewsWhenDetachedFromWindow(Z)V

    .line 272
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$2(Lcom/android/launcher4/AppsCustomizeTabHost;)Lcom/android/launcher4/AppsCustomizePagedView;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->removeView(Landroid/view/View;)V

    .line 273
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/launcher4/PagedViewWidget;->setDeletePreviewsWhenDetachedFromWindow(Z)V

    .line 274
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$4(Lcom/android/launcher4/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 275
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$4(Lcom/android/launcher4/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 276
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 277
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 276
    invoke-direct {v5, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 278
    .local v5, "p":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 279
    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost$3;->this$0:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v8}, Lcom/android/launcher4/AppsCustomizeTabHost;->access$4(Lcom/android/launcher4/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8, v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    .line 268
    .end local v5    # "p":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    instance-of v8, v1, Lcom/android/launcher4/PagedViewGridLayout;

    if-eqz v8, :cond_5

    move-object v8, v1

    .line 269
    check-cast v8, Lcom/android/launcher4/PagedViewGridLayout;

    invoke-virtual {v8}, Lcom/android/launcher4/PagedViewGridLayout;->resetChildrenOnKeyListeners()V

    goto :goto_3
.end method

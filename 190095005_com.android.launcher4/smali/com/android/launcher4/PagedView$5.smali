.class Lcom/android/launcher4/PagedView$5;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/PagedView;

.field private final synthetic val$dragView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher4/PagedView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    iput-object p2, p0, Lcom/android/launcher4/PagedView$5;->val$dragView:Landroid/view/View;

    .line 2789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/PagedView$5;)Lcom/android/launcher4/PagedView;
    .locals 1

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 2792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->val$dragView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 2802
    .local v4, "dragViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher4/PagedView;->getOverviewModePages([I)V

    .line 2803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    .line 2804
    .local v7, "isLastWidgetPage":Z
    :goto_0
    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    if-gt v4, v0, :cond_2

    const/4 v13, 0x0

    .line 2807
    .local v13, "slideFromLeft":Z
    :goto_1
    if-eqz v13, :cond_0

    .line 2808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v4, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher4/PagedView;->snapToPageImmediately(I)V

    .line 2811
    :cond_0
    if-eqz v7, :cond_3

    const/4 v5, 0x0

    .line 2813
    .local v5, "firstIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    .line 2814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    .line 2813
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2815
    .local v8, "lastIndex":I
    if-eqz v13, :cond_4

    move v9, v5

    .line 2817
    .local v9, "lowerIndex":I
    :goto_3
    if-eqz v13, :cond_5

    add-int/lit8 v14, v4, -0x1

    .line 2818
    .local v14, "upperIndex":I
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2819
    .local v3, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move v6, v9

    .local v6, "i":I
    :goto_5
    if-le v6, v14, :cond_6

    .line 2864
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2865
    .local v12, "slideAnimations":Landroid/animation/AnimatorSet;
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/launcher4/PagedView;->access$4(Lcom/android/launcher4/PagedView;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2867
    new-instance v16, Lcom/android/launcher4/PagedView$5$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/PagedView$5$1;-><init>(Lcom/android/launcher4/PagedView$5;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2875
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->val$dragView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher4/PagedView;->removeView(Landroid/view/View;)V

    .line 2878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->val$dragView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/android/launcher4/PagedView;->onRemoveView(Landroid/view/View;Z)V

    .line 2879
    return-void

    .line 2803
    .end local v3    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v5    # "firstIndex":I
    .end local v6    # "i":I
    .end local v7    # "isLastWidgetPage":Z
    .end local v8    # "lastIndex":I
    .end local v9    # "lowerIndex":I
    .end local v12    # "slideAnimations":Landroid/animation/AnimatorSet;
    .end local v13    # "slideFromLeft":Z
    .end local v14    # "upperIndex":I
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2804
    .restart local v7    # "isLastWidgetPage":Z
    :cond_2
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 2812
    .restart local v13    # "slideFromLeft":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v5, v16, v17

    goto/16 :goto_2

    .line 2816
    .restart local v5    # "firstIndex":I
    .restart local v8    # "lastIndex":I
    :cond_4
    add-int/lit8 v9, v4, 0x1

    goto :goto_3

    .restart local v9    # "lowerIndex":I
    :cond_5
    move v14, v8

    .line 2817
    goto :goto_4

    .line 2820
    .restart local v3    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v6    # "i":I
    .restart local v14    # "upperIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/launcher4/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 2826
    .local v15, "v":Landroid/view/View;
    const/4 v11, 0x0

    .line 2827
    .local v11, "oldX":I
    const/4 v10, 0x0

    .line 2828
    .local v10, "newX":I
    if-eqz v13, :cond_9

    .line 2829
    if-nez v6, :cond_8

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/launcher4/PagedView;->getChildOffset(I)I

    move-result v17

    add-int v16, v16, v17

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/launcher4/PagedView;->getChildWidth(I)I

    move-result v17

    .line 2832
    sub-int v16, v16, v17

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher4/PagedView;->mPageSpacing:I

    move/from16 v17, v0

    .line 2832
    sub-int v11, v16, v17

    .line 2837
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/launcher4/PagedView;->getChildOffset(I)I

    move-result v17

    add-int v10, v16, v17

    .line 2846
    :goto_7
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    .line 2847
    .local v2, "anim":Landroid/animation/AnimatorSet;
    if-eqz v2, :cond_7

    .line 2848
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2854
    :cond_7
    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v16

    const v17, 0x3c23d70a    # 0.01f

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setAlpha(F)V

    .line 2855
    sub-int v16, v11, v10

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setTranslationX(F)V

    .line 2856
    new-instance v2, Landroid/animation/AnimatorSet;

    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2857
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 2858
    const-string v18, "translationX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 2859
    const-string v18, "alpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    aput-object v18, v16, v17

    .line 2857
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2860
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2861
    const/16 v16, 0x64

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2819
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 2835
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v17, v0

    add-int/lit8 v18, v6, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher4/PagedView;->getChildOffset(I)I

    move-result v17

    add-int v11, v16, v17

    goto/16 :goto_6

    .line 2839
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/launcher4/PagedView;->getChildOffset(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView$5;->this$0:Lcom/android/launcher4/PagedView;

    move-object/from16 v17, v0

    add-int/lit8 v18, v6, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher4/PagedView;->getChildOffset(I)I

    move-result v17

    sub-int v11, v16, v17

    .line 2840
    const/4 v10, 0x0

    goto/16 :goto_7
.end method
